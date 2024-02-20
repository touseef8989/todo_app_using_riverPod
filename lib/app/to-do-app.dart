import 'package:api_riverpoad/config/theme/app_theme.dart';
import 'package:api_riverpoad/screens/home_screen.dart';
import 'package:flutter/material.dart';

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.light,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
