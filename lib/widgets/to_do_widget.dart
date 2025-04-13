import 'package:flutter/material.dart';
import 'package:flutter_a11y/models/to_do.dart';

class ToDoWidget extends StatelessWidget {
  const ToDoWidget({super.key, required this.toDo});

  final ToDo toDo;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text.rich(
          TextSpan(
              text: '${toDo.title} as a Text.rich Widget, which scales very well',
              style: Theme.of(context).textTheme.bodyMedium),
        ),
      ],
    );
  }
}
