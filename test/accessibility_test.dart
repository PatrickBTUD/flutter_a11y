import 'package:flutter_a11y/a11y_app.dart';
import 'package:flutter_a11y/main.dart';
import 'package:flutter_a11y/models/to_do.dart';
import 'package:flutter_a11y/widgets/bad_a11y_to_do_widget.dart';
import 'package:flutter_a11y/widgets/to_do_widget.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Follows a11y guidelines', (tester) async {
    final fakeToDo = ToDo(
      id: 0,
      title: 'To Do 0',
      isSelected: false,
      imageAlt: 'On this image you can see a person with a book',
      imagePath: 'assets/images/placeholder.jpeg',
    );
    final SemanticsHandle handle = tester.ensureSemantics();
    // await tester.pumpWidget(ToDoWidget(
    //   toDo: fakeToDo,
    // ));
    await tester.pumpWidget(BadA11yToDoWidget(
      toDo: fakeToDo,
    ));
    await tester.pumpAndSettle();

    // Checks that tappable nodes have a minimum size of 48 by 48 pixels
    // for Android.
    // await expectLater(tester, meetsGuideline(androidTapTargetGuideline));

    // Checks that tappable nodes have a minimum size of 44 by 44 pixels
    // for iOS.
    // await expectLater(tester, meetsGuideline(iOSTapTargetGuideline));

    // Checks that touch targets with a tap or long press action are labeled.
    // await expectLater(tester, meetsGuideline(labeledTapTargetGuideline));

    // Checks whether semantic nodes meet the minimum text contrast levels.
    // The recommended text contrast is 3:1 for larger text
    // (18 point and above regular).
    await expectLater(tester, meetsGuideline(textContrastGuideline));
    handle.dispose();
  });
}
