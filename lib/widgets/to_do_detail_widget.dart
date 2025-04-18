import 'package:flutter/material.dart';
import 'package:flutter_a11y/provider/todo_provider.dart';
import 'package:flutter_a11y/widgets/bad_a11y_to_do_widget.dart';
import 'package:flutter_a11y/widgets/to_do_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoDetailWidget extends ConsumerWidget {
  const ToDoDetailWidget({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentToDo = ref.watch(todoControllerProvider).currentToDo;
    if (currentToDo == null) {
      return const Center(
        child: Text('No Current To Do selected'),
      );
    }
    return Material(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              (index % 2 == 1) ? ToDoWidget(toDo: currentToDo) : BadA11yToDoWidget(toDo: currentToDo),
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
