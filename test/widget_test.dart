import 'package:flutter/material.dart';
import 'package:flutter_navigation_bar_example/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_navigation_bar_example/main.dart';

void main() {
  testWidgets('Clicking the first destination shows the map widget', (WidgetTester tester) async {
    await tester.pumpWidget(const NavigationBarApp());

    await tester.tap(find.byType(NavigationDestination).first);
    await tester.pump();

    expect(find.byType(MapWidget), findsOne);
  });

  testWidgets('Clicking the second destination shows the stats widget', (WidgetTester tester) async {
    await tester.pumpWidget(const NavigationBarApp());

    await tester.tap(find.byType(NavigationDestination).at(1));
    await tester.pump();

    expect(find.byType(StatsWidget), findsOne);
  });

  testWidgets('Clicking the third destination shows the visits widget', (WidgetTester tester) async {
    await tester.pumpWidget(const NavigationBarApp());

    await tester.tap(find.byType(NavigationDestination).last);
    await tester.pump();

    expect(find.byType(VisitsWidget), findsOne);
  });
}
