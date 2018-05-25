import 'dart:async';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';
import 'package:shelf_static/shelf_static.dart';

void main() {
  runZoned(() {
    final staticHandler =
        createStaticHandler('build/web', defaultDocument: 'index.html');

    final handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(staticHandler);

    serve(handler, '0.0.0.0', 8080).then((server) {
      print('Listening on http://localhost:8080');
    });
  }, onError: (error, stack) {
    print('Ops! $error');
  });
}
