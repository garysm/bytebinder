import 'dart:async';
import 'dart:io';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';
import 'package:shelf_web_socket/shelf_web_socket.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

part 'app.g.dart';

class App {
  final Stdout logger;
  App(this.logger) {
    logger.writeln('Initialized App');
  }

  final _clients = <String, WebSocketChannel>{};

  @Route.get('/')
  Future<Response> getRoot(Request request) async =>
      Response.ok('Hello, client!');

  @Route.get('/ws')
  FutureOr<Response> getSocket(Request request) {
    final wsHandler = webSocketHandler(
      (WebSocketChannel webSocket) {},
    );
    return wsHandler(request);
  }

  Handler get handler => _$AppRouter(this);
}
