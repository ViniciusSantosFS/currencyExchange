import 'package:app/App/Controllers/home_controller.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();

  final homeController = HomeController(toText, fromText);

  test('Converte de Real para Dólar', () {
    toText.text = '2.0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });

  test('Verifica a conversão com virgula', () {
    toText.text = '2,0';
    homeController.convert();
    expect(fromText.text, '0.36');
  });
}
