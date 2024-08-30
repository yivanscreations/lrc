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

  test('multi language lrc parsing', () {
    const multiLanguageSyncedLrc = '''[by:Trap_Girl]
[00:01.89]
[00:06.87]Yes we started a fire, now the bedroom is burning  我们点燃了一场火，现在卧室正燃着熊熊大火
[00:12.16]Can we put it out?  我们可以把它扑灭吗？
[00:13.99]'Cause we're both saying things that we're gonna regret when|我们总会说一些令人后悔的事
[00:19.16]Every word's too loud|每个字都是那么刺耳  
[00:21.12]We gotta slow, slow, slow down;
[00:21.12]我们只需要冷静下来
[00:24.30]Gotta lay low, low, low now/现在一个人出去静静
[00:28.01]Yeah, we should go, go, go now
[00:28.01]没错我们现在都该离开
[00:31.57]'Cause things are always better
[00:31.57]事情总会好起来的''';

    final parsed = Lrc.parse(multiLanguageSyncedLrc);
    expect(parsed.lyrics.length, 16);
  });
}
