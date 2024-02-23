import 'package:api_riverpoad/screens/onboard/main_onboard.dart';
import 'package:go_router/go_router.dart';

import '../../screens/create_task_screen.dart';
import '../../screens/home_screen.dart';
import 'routes_location.dart';
import 'routes_provider.dart';

final appRoutes = [
  GoRoute(
    path: RouteLocation.onboard,
    parentNavigatorKey: navigationKey,
    builder: OnboardPage.builder,
  ),
  GoRoute(
    path: RouteLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RouteLocation.createTask,
    parentNavigatorKey: navigationKey,
    builder: CreateTaskScreen.builder,
  ),
];
