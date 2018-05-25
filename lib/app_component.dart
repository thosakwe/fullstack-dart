import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';
import 'package:angular_router/angular_router.dart';

import 'src/store.dart';
import 'src/routes.dart';

Store storeFactory() {
  final initialState = new State((b) => b.message = 'Hello world');
  return new Store(initialState);
}

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.scss.css'],
  directives: const [routerDirectives, MaterialButtonComponent],
  providers: [
    const FactoryProvider(Store, storeFactory),
    const ClassProvider(Routes),
  ],
)
class AppComponent {
  final Store store;
  final Routes routes;

  AppComponent(this.store, this.routes);
}
