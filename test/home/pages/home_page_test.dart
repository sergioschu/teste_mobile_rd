import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:teste_mobile_rd/home/pages/home_page.dart';

void main() {
  Future<void> _createWidget(WidgetTester tester) async {
    await tester.pumpWidget(HomePage());
  }

  testWidgets("Verificando a existência de App bar na Home Page",
      (WidgetTester teste) async {
    await _createWidget(teste);

    expect(find.byType(AppBar), findsOneWidget);
  });
}
