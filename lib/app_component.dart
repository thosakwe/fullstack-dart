import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.scss.css'],
  directives: const [routerDirectives],
  providers: [
    const ClassProvider(Routes),
  ],
)
class AppComponent {
  final Routes routes;

  AppComponent(this.routes);
}
