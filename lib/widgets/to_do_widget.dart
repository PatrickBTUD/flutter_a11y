import 'package:flutter/material.dart';
import 'package:flutter_a11y/models/to_do.dart';
import 'package:flutter_a11y/provider/todo_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoWidget extends ConsumerWidget {
  const ToDoWidget({super.key, required this.toDo});

  final ToDo toDo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Material(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text.rich(
                TextSpan(
                    text: '${toDo.title} as a Text.rich Widget, which scales very well',
                    style: Theme.of(context).textTheme.bodyMedium),
              ),
            ),
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/placeholder.jpeg',
              width: 100,
              height: 100,
              semanticLabel: toDo.imageAlt,
            ),
            Text('Image with an alt text'),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                ref.read(todoControllerProvider.notifier).toggleCurrentToDo();
              },
              child: SizedBox.square(
                dimension: 48,
                child: Icon(
                  toDo.isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                  applyTextScaling: true,
                  semanticLabel: 'Checkbox is ${toDo.isSelected ? 'checked' : 'unchecked'}',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
