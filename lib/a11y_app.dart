import 'package:flutter/material.dart';
import 'package:flutter_a11y/todo_screen.dart';

class A11yApp extends StatelessWidget {
  const A11yApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title is used by screen readers to tell about heading
        title: const Text('Flutter A11Y App'),
      ),
      floatingActionButton: FloatingActionButton(
        //tooltip is used by screen readers to describe the button
        tooltip: 'Increment',
        child: const Icon(Icons.add),
        onPressed: () {
          debugPrint('FloatingActionButton pressed');
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ToDoScreen(),
                  ),
                );
              },
              child: const Text('Go To ToDo List'),
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
    );
  }
}
