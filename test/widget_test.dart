// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:todos/main.dart';

void main() {
  testWidgets('App renders smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(TodosApp());

    expect(find.text('Todos'), findsOneWidget);
    expect(find.text('All'), findsOneWidget);
    expect(find.text('Incomplete'), findsOneWidget);
    expect(find.text('Complete'), findsOneWidget);
  });
}
