import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

// ignore: uri_has_not_been_generated
import 'package:angulardart_boot/app_component.template.dart' as appCompTpl;

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = ng.injector$Injector;

void main() =>
    runApp(appCompTpl.AppComponentNgFactory, createInjector: injector);
