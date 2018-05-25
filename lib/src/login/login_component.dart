import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/material_button/material_button.dart';

import '../store.dart';
import '../route_paths.dart' as paths;

@Component(
  selector: 'login',
  templateUrl: 'login_component.html',
  directives: const [MaterialButtonComponent],
)
class LoginComponent {
  final Store store;
  final Router router;

  LoginComponent(this.store, this.router);

  goToIndex() {
    store.mutate(new State((b) => b.token = 'A1b2C3'));
    router.navigate(paths.index.path);
  }
}
