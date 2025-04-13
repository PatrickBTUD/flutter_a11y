import 'package:flutter/material.dart';
import 'package:flutter_a11y/provider/todo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoDetailWidget extends ConsumerWidget {
  const ToDoDetailWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentToDo = ref.watch(todoControllerProvider).currentToDo;
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                title: Text(currentToDo?.title ?? ''),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
