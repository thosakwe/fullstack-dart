import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart' as paths;
import 'index/index_component.template.dart' as index;
import 'login/login_component.template.dart' as login;

@Injectable()
class Routes {
  final _routes = {
    'index': new RouteDefinition(
      useAsDefault: true,
      routePath: paths.index,
      component: index.IndexComponentNgFactory,
    ),
    'login': new RouteDefinition(
      routePath: paths.login,
      component: login.LoginComponentNgFactory,
    ),
  };

  RouteDefinition get(String name) => _routes[name];
  List<RouteDefinition> get all => _routes.values.toList();
}
