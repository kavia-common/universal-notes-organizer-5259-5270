import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:notes_frontend/main.dart';
import 'package:notes_frontend/repositories/notes_repository.dart';

void main() {
  testWidgets('Home renders with title and FAB', (WidgetTester tester) async {
    final repository = LocalNotesRepository();
    await tester.pumpWidget(MyApp(repository: repository));

    // Initial frame
    await tester.pump();

    expect(find.text('Notes'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
    expect(find.byIcon(Icons.search_rounded), findsOneWidget);
  });
}
