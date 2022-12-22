import 'package:filter_word/filter_word.dart';
import 'package:test/test.dart';

void main() {
  test('Sensor toAsterisk', () {
    final tes = SensorWord();

    tes.setWords([
      "asa",
      "aka"
    ]);

    final a = tes.sensorWord("akxsa");

    expect(a, true);
  });
}
