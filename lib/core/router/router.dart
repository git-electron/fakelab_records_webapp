import 'package:auto_route/auto_route.dart';
import 'package:fakelab_records_webapp/core/router/router.gr.dart';
import 'package:injectable/injectable.dart';

@singleton
@AutoRouterConfig(deferredLoading: true)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/', initial: true),
        AutoRoute(page: UnknownSourceRoute.page),
      ];
}
