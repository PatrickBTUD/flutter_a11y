import 'package:flutter/material.dart';
import 'package:flutter_a11y/widgets/to_do_detail_widget.dart';
import 'package:flutter_a11y/widgets/to_do_portrait_widget.dart';

class ToDoLandscapeWidget extends StatelessWidget {
  const ToDoLandscapeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ToDoPortraitWidget(),
        ),
        Expanded(
          child: ToDoDetailWidget(),
        ),
      ],
    );
  }
}
