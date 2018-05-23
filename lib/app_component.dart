import 'package:angular/angular.dart';
import 'package:angular_components/material_button/material_button.dart';

@Component(
  selector: 'app',
  templateUrl: 'app_component.html',
  styleUrls: const ['app_component.scss.css'],
  directives: const [MaterialButtonComponent],
)
class AppComponent {}
