import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

// ignore: uri_has_not_been_generated
import 'package:angulardart_boot/angulardart_boot_client.template.dart' as app;

// ignore: uri_has_not_been_generated
import 'main.template.dart' as ng;

@GenerateInjector(
  routerProvidersHash, // You can use routerProviders in production
)
final InjectorFactory injector = ng.injector$Injector;

void main() => runApp(app.AppComponentNgFactory, createInjector: injector);
