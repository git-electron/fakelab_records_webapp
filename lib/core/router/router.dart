import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/user_bloc/user_bloc.dart';
import 'package:fakelab_records_webapp/core/utils/try_or/try_or_null.dart';
import '../domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import 'package:logger/logger.dart';
import 'router.gr.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.logger, this.userBloc, this.telegramDataBloc) {
    telegramDataBloc.telegramService.addBackButtonEvent(pop);
  }

  final Logger logger;
  final UserBloc userBloc;
  final TelegramDataBloc telegramDataBloc;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple((resolver, router) {
      logger.i('''Navigation:
Path: ${resolver.route.path}
Path params: ${resolver.route.params}
Args: ${resolver.route.args}''');
      resolver.next();
    }),
    // AutoRouteGuard.simple((resolver, router) {
    //   if (resolver.routeName == AdminRoute.name) {
    //     if (!userBloc.state.isAuthorized ||
    //         !(userBloc.state.user?.isAdmin ?? false)) {
    //       resolver.redirectUntil(const HomeRoute());
    //     }

    //     tryOrNull(telegramDataBloc.telegramService.requestFullscreen);
    //   } else {
    //     final bool isMobile =
    //         telegramDataBloc.state.telegramData?.meta.isMobile ?? false;
    //     if (!isMobile) {
    //       tryOrNull(telegramDataBloc.telegramService.exitFullscreen);
    //     }
    //   }
    //   resolver.next();
    // }),
    AutoRouteGuard.simple((resolver, router) {
      if (router.canPop() && resolver.routeName != HomeRoute.name) {
        telegramDataBloc.telegramService.showBackButton();
      } else {
        telegramDataBloc.telegramService.hideBackButton();
      }
      resolver.next();
    }),
    AutoRouteGuard.simple(
      (resolver, router) {
        final bool isSupported = telegramDataBloc.state.isSupported;

        if (isSupported) {
          if (resolver.routeName != UnsupportedRoute.name) {
            resolver.next();
          } else {
            resolver.redirectUntil(const HomeRoute());
          }
        } else {
          if (resolver.routeName != UnsupportedRoute.name) {
            resolver.redirectUntil(const UnsupportedRoute());
          } else {
            resolver.next();
          }
        }
      },
    ),
  ];

  @override
  List<AutoRoute> get routes => [
        ...customRoutes,
        AutoRoute(
          page: BaseRoute.page,
          path: '/',
          children: [
            AutoRoute(page: HomeRoute.page, path: 'home', initial: true),
            AutoRoute(page: MyOrdersRoute.page, path: 'orders'),
            AutoRoute(page: LoyaltyRoute.page, path: 'loyalty'),
          ],
        ),
        AutoRoute(page: MyOrderRoute.page, path: '/orders/:id'),
        AutoRoute(page: ImagesViewerRoute.page, path: '/images'),
        AutoRoute(page: UnsupportedRoute.page, path: '/unsupported'),
        AutoRoute(page: AdminRoute.page, path: '/admin'),
        ...redirections,
      ];

  List<CustomRoute> get customRoutes => [];

  List<RedirectRoute> get redirections => [
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
