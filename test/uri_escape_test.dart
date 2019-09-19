import 'package:test/test.dart';
import 'package:uri_escape/uri_escape.dart';

void main() {
  group('Uri escape for search', () {
    String text;

    setUp(() {
      text = "Amazon Kindle & Root";
    });

    test('First Test', () {
      var tmp = EscapeURIString(text);
      expect(tmp == "Amazon+Kindle+%26+Root", isTrue);
    });
  });
}
