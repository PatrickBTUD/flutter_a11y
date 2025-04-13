import 'package:accessibility_tools/accessibility_tools.dart';
import 'package:flutter/material.dart';
import 'package:flutter_a11y/a11y_app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: Color(0xFF78FFBE),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorSchemeSeed: Color(0xFF78FFBE),
        brightness: Brightness.dark,
        useMaterial3: true,
      ),
      builder: (context, child) => AccessibilityTools(
        buttonsAlignment: ButtonsAlignment.bottomLeft,
        minimumTapAreas: MinimumTapAreas.cupertino,
        testingToolsConfiguration: TestingToolsConfiguration(
          minTextScale: 0.5,
          maxTextScale: 2.5,
        ),
        child: child,
      ),
      home: Builder(
        builder: (context) {
          final textScaler = MediaQuery.textScalerOf(context);
          return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: textScaler.clamp(
                minScaleFactor: 1.0,
                maxScaleFactor: 2.0,
              ),
            ),
            child: A11yApp(),
          );
        },
      ),
    );
  }
}
