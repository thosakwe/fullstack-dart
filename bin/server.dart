import 'dart:async';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart';

Response _handler(Request request) {
  return new Response.ok('it works');
}

void main() {
  runZoned(() {
    final handler =
        const Pipeline().addMiddleware(logRequests()).addHandler(_handler);

    serve(handler, '0.0.0.0', 8080);
  }, onError: (error, stack) {
    print('Ops! $error');
  });
}
