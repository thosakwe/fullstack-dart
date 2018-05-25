import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';
import 'package:angular_components/material_button/material_button.dart';

import '../store.dart';
import '../route_paths.dart' as paths;

@Component(
  selector: 'index',
  templateUrl: 'index_component.html',
  directives: const [MaterialButtonComponent],
)
class IndexComponent implements OnActivate {
  final Store store;
  final Router router;

  IndexComponent(this.store, this.router);

  @override
  void onActivate(_, RouterState current) {
    if (store.state.token == null) {
      router.navigate(paths.login.path);
    }
  }
}
