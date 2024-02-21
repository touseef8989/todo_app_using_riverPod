import 'package:api_riverpoad/app/to-do-app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: ToDoApp()));
}
