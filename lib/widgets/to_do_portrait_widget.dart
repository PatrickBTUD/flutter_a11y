import 'package:flutter/material.dart';
import 'package:flutter_a11y/provider/todo_provider.dart';
import 'package:flutter_a11y/widgets/to_do_detail_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoPortraitWidget extends ConsumerWidget {
  const ToDoPortraitWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todos = ref.watch(todoControllerProvider).todos;
    if (todos.isEmpty) {
      return const Center(
        child: Text('No To Do'),
      );
    }
    return ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          final todo = todos[index];
          return ListTile(
            title: Text(todo.title),
            trailing: Checkbox(
              value: todo.isSelected,
              onChanged: (value) {
                ref.read(todoControllerProvider.notifier).toggle(todo);
              },
            ),
            onTap: () {
              ref.read(todoControllerProvider.notifier).setCurrentToDo(todo);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ToDoDetailWidget(),
                ),
              );
            },
          );
        });
  }
}
