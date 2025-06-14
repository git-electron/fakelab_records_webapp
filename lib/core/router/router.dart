import 'package:auto_route/auto_route.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

import '../domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import '../domain/bloc/user_bloc/user_bloc.dart';
import 'router.gr.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.logger, this.userBloc, this.telegramDataBloc) {
    telegramDataBloc.telegramService.addBackButtonEvent(pop);
  }

  final Logger logger;
  final UserBloc userBloc;
  final TelegramDataBloc telegramDataBloc;

  bool get isMobile => telegramDataBloc.state.isMobile;

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
    //   }
    //   resolver.next();
    // }), //TODO: uncomment
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
            AutoRoute(page: LoyaltyRoute.page, path: 'loyalty'),
            AutoRoute(page: MyOrdersRoute.page, path: 'orders'),
          ],
        ),
        AutoRoute(page: MyOrderRoute.page, path: '/orders/:id'),
        AutoRoute(page: BookRecordingRoute.page, path: '/book'),
        AutoRoute(page: ImagesViewerRoute.page, path: '/images'),
        AutoRoute(page: MyBookingRoute.page, path: '/bookings/:id'),
        AutoRoute(page: UnsupportedRoute.page, path: '/unsupported'),
        if (isMobile) AutoRoute(page: AdminRoute.page, path: '/admin'),
        AutoRoute(page: BookRecordingDateRoute.page, path: '/book/date'),
        AutoRoute(page: BookRecordingTimeRoute.page, path: '/book/time'),
        AutoRoute(page: AdminOrderRoute.page, path: '/admin/orders/:id'),
        AutoRoute(page: AdminCreateOrderRoute.page, path: '/admin/orders/create'),
        AutoRoute(page: AdminCreateClientRoute.page, path: '/admin/clients/create'),
        AutoRoute(page: AdminEditClientRoute.page, path: '/admin/clients/edit/:id'),
        AutoRoute(page: AdminCreateStaffMemberRoute.page, path: '/admin/staff/create'),
        AutoRoute(page: AdminEditStaffMemberRoute.page, path: '/admin/staff/edit/:id'),
        ...redirections,
      ];

  List<CustomRoute> get customRoutes => [
        if (!isMobile) CustomRoute(page: AdminRoute.page, path: '/admin'),
      ];

  List<RedirectRoute> get redirections => [
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
