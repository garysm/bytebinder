import 'dart:io';

import 'package:server/app.dart';
import 'package:shelf/shelf_io.dart';

Future main(List<String> args) async {
  final Stdout logger = stdout;
  logger.writeln('Starting server...');
  final app = App(logger);
  // Use any available host or container IP (usually `0.0.0.0`).
  final ip = InternetAddress.anyIPv4;
  // For running in containers, we respect the PORT environment variable.
  final port = int.parse(Platform.environment['PORT'] ?? '8080');
  final server = await serve(app.handler, ip, port);
  print('Server listening on port ${server.port}');
}
