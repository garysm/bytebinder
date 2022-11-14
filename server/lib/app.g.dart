// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// ShelfRouterGenerator
// **************************************************************************

Router _$AppRouter(App service) {
  final router = Router();
  router.add(
    'GET',
    r'/',
    service.getRoot,
  );
  router.add(
    'GET',
    r'/ws',
    service.getSocket,
  );
  return router;
}
