import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomContainerExtension wraps a widget with Container',
      (WidgetTester tester) async {
    // Arrange: Create a test widget
    final testWidget = const Text("Hello, Test")
        .customContainer(
            onTap: () => print("Hello, Test"),
            width: 100,
            height: 50,
            color: Colors.red,
            borderRadius: 15,
            lM: 10,
            lP: 50)
        .showShimmer();

    // Act: Build the widget
    await tester.pumpWidget(MaterialApp(home: Scaffold(body: testWidget)));

    // Assert: Verify if the widget is present
    final containerFinder = find.byType(Container);
    expect(containerFinder, findsOneWidget);
  });
}
