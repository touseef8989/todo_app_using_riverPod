import 'package:api_riverpoad/config/routes/routes.dart';
import 'package:api_riverpoad/screens/create_task_screen.dart';
import 'package:api_riverpoad/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final navigationKey = GlobalKey<NavigatorState>();

final appRoutes = [
  GoRoute(
    path: RoutesLocation.home,
    parentNavigatorKey: navigationKey,
    builder: HomeScreen.builder,
  ),
  GoRoute(
    path: RoutesLocation.creatTask,
    parentNavigatorKey: navigationKey,
    builder: CreatTaskScreen.builder,
  )
];
