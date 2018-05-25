import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/material_button/material_button.dart';

import '../route_paths.dart' as paths;

@Component(
  selector: 'foo',
  templateUrl: 'foo_component.html',
  directives: const [MaterialButtonComponent],
)
class FooComponent {
  final Router router;

  FooComponent(this.router);

  goToBar() {
    router.navigate(paths.bar.path);
  }
}
