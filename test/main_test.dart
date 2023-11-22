import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:test_widget/main.dart';

void main() {
  testWidgets('counter incriments smoke teste', (tester) async {
    //build our app and trigger a frame
    await tester.pumpWidget(const MyApp());

    //verify that our conter starts at 0
    expect(find.byKey(const Key('CounterValue')), findsOneWidget);
    expect(find.text('1'), findsNothing);

    //tap the + icon and trigger a frame
    await tester.tap(find.byIcon(Icons.add));
    await tester
        .pump(Duration(seconds: 10)); //listen the change the state of widget

    expect(find.text('1'), findsOneWidget);
    expect(find.text('0'), findsNothing);
  });
}
