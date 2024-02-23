import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/repositories/task_repository_provider.dart';
import 'task_notifier.dart';
import 'task_state.dart';

final tasksProvider = StateNotifierProvider<TaskNotifier, TaskState>((ref) {
  final repository = ref.watch(taskRepositoryProvider);
  return TaskNotifier(repository);
});
