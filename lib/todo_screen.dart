import 'package:flutter/material.dart';
import 'package:flutter_a11y/provider/todo_provider.dart';
import 'package:flutter_a11y/widgets/to_do_landscape_widget.dart';
import 'package:flutter_a11y/widgets/to_do_portrait_widget.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoScreen extends ConsumerWidget {
  const ToDoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return const ToDoPortraitWidget();
          } else {
            return const ToDoLandscapeWidget();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: 'Add To Do',
        child: const Icon(Icons.add),
        onPressed: () {
          ref.read(todoControllerProvider.notifier).addRandomToDo();
        },
      ),
    );
  }
}
