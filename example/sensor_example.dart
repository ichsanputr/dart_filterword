import 'package:filter_word/filter_word.dart';

void SensorWord() {
  var sensor = SensorWord();

  sensor.toAsterisk("Dog");
  // ***

  sensor.toSymbol("Dog", "#");
  // ###

  sensor.findToAsterisk("Hello whats is your name fuck?","fuck");
  // Hello whats is your name ***?

  sensor.findToSymbol("Hello whats is your name fuck?","fuck", "$");
  // Hello whats is your name $$$?

  sensor.setWords([
    "fuck",
    "dog",
    "duck"
  ]);
  sensor.isSensoredWord("duck");
  // true
}
