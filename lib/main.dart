import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => AccessibilityTools(
        buttonsAlignment: ButtonsAlignment.bottomLeft,
        child: child,
      ),
      home: Scaffold(
        appBar: AppBar(
          //title is used by screen readers to tell about heading
          title: const Text('Flutter A11Y App'),
        ),
        floatingActionButton: FloatingActionButton(
          //tooltip is used by screen readers to describe the button
          tooltip: 'Increment',
          onPressed: () {
            debugPrint('FloatingActionButton pressed');
          },
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ),
    );
  }
}
