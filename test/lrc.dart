import 'package:lrc/lrc.dart';
import 'package:test/test.dart';

void main() {
  test('multi timestamp lrc parsing', () {
    const multiTimestampedSyncedLrc = '''[00:11.86]Line 1 lyrics
[00:24]Line 2 lyrics
[00:29.02][00:44.02]Line 3 lyrics
[00:29][00:31.1] Line 4 lyrics''';

    final parsed = Lrc.parse(multiTimestampedSyncedLrc);

    expect(parsed.lyrics.length, 6);
  });
}
