import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart' as paths;

import 'foo/foo_component.template.dart' as foo;
import 'bar/bar_component.template.dart' as bar;
import 'baz/baz_component.template.dart' as baz;

@Injectable()
class Routes {
  final _routes = {
    'foo': new RouteDefinition(
      useAsDefault: true,
      routePath: paths.foo,
      component: foo.FooComponentNgFactory,
    ),
    'bar': new RouteDefinition(
      routePath: paths.bar,
      component: bar.BarComponentNgFactory,
    ),
    'baz': new RouteDefinition(
      routePath: paths.baz,
      component: baz.BazComponentNgFactory,
    ),
  };

  RouteDefinition get(String name) => _routes[name];
  List<RouteDefinition> get all => _routes.values.toList();
}
