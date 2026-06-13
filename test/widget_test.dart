import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:appcole/main.dart';

void main() {
  testWidgets('shows Cupertino login screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.byType(CupertinoApp), findsOneWidget);
    expect(find.text('Bienvenido'), findsOneWidget);
    expect(find.text('Iniciar Sesion'), findsOneWidget);
  });
}
