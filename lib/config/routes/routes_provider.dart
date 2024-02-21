import 'package:api_riverpoad/config/routes/routes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final routesProvider = Provider((ref) {
  return GoRouter(
    initialLocation: RoutesLocation.home,
    navigatorKey: navigationKey,
    routes: appRoutes,
  );
});
