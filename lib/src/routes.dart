import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'route_paths.dart' as paths;

// ignore: uri_has_not_been_generated
import 'components/foo/foo_component.template.dart' as fooCompTpl;
// ignore: uri_has_not_been_generated
import 'components/bar/bar_component.template.dart' as barCompTpl;
// ignore: uri_has_not_been_generated
import 'components/baz/baz_component.template.dart' as bazCompTpl;

@Injectable()
class Routes {
  static final _foo = new RouteDefinition(
    useAsDefault: true,
    routePath: paths.foo,
    component: fooCompTpl.FooComponentNgFactory,
  );

  static final _bar = new RouteDefinition(
    routePath: paths.bar,
    component: barCompTpl.BarComponentNgFactory,
  );

  static final _baz = new RouteDefinition(
    routePath: paths.baz,
    component: bazCompTpl.BazComponentNgFactory,
  );

  RouteDefinition get foo => _foo;
  RouteDefinition get bar => _bar;
  RouteDefinition get baz => _baz;

  final all = [_foo, _bar, _baz];
}
