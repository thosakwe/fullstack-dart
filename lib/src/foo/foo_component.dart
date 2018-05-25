import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/material_button/material_button.dart';

import '../store.dart';
import '../route_paths.dart' as paths;

@Component(
  selector: 'foo',
  templateUrl: 'foo_component.html',
  directives: const [MaterialButtonComponent],
)
class FooComponent {
  final Store store;
  final Router router;

  FooComponent(this.store, this.router);

  changeMessage() {
    store.mutate(new State((b) => b.message = 'Message at foo'));
  }

  goToBar() {
    router.navigate(paths.bar.path);
  }
}
