import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/domain/bloc/telegram_data_bloc/telegram_data_bloc.dart';
import 'router.gr.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter(this.telegramDataBloc);

  final TelegramDataBloc telegramDataBloc;

  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  late final List<AutoRouteGuard> guards = [
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
        AutoRoute(page: HomeRoute.page, path: '/', initial: true),
        AutoRoute(page: MyOrdersRoute.page, path: '/orders'),
        AutoRoute(page: MyOrderRoute.page, path: '/orders/:id'),
        AutoRoute(page: ImagesViewerRoute.page, path: '/images'),
        AutoRoute(page: UnsupportedRoute.page, path: '/unsupported'),
        ...redirections,
        ...customRoutes,
      ];

  List<CustomRoute> get customRoutes => [];

  List<RedirectRoute> get redirections => [
        RedirectRoute(path: '*', redirectTo: '/'),
      ];
}
