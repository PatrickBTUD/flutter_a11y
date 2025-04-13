import 'package:flutter/material.dart';
import 'package:flutter_a11y/models/to_do.dart';

class BadA11yToDoWidget extends StatelessWidget {
  const BadA11yToDoWidget({super.key, required this.toDo});

  final ToDo toDo;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Directionality(
        textDirection: TextDirection.ltr,
        child: ColoredBox(
          color: Color(0xFFe1e3e1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  toDo.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: 'Rich Text Widget do not scale well',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/placeholder.jpeg',
                width: 100,
                height: 100,
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {},
                child: Icon(
                  toDo.isSelected ? Icons.check_box : Icons.check_box_outline_blank,
                  color: Colors.white,
                  size: 18,
                ),
              ),
              Semantics(
                button: true,
                label: 'A',
                child: GestureDetector(
                  onTap: () {
                    debugPrint('GestureDetector pressed');
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(2),
                    ),
                    child: Text(
                      'B',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Colors.teal),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
