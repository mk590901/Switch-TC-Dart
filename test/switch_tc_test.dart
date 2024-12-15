import 'package:switch_tc/switch_reset_helper.dart';
import 'package:switch_tc/switch_tc.dart';
import 'package:test/test.dart';

void main() {
  test('run', () {
    expect(run(), 'Was done');
  });

  test('run', () {
  Switch_resetHelper hsmHelper = Switch_resetHelper();
    expect(hsmHelper.state(), 'switch');
    hsmHelper.init();
    expect(hsmHelper.state(), 'off');
    hsmHelper.run('TURN');
    expect(hsmHelper.state(), 'on');
    hsmHelper.run('RESET');
    expect(hsmHelper.state(), 'off');
    hsmHelper.run('TURN');
    expect(hsmHelper.state(), 'on');
    hsmHelper.run('TURN');
    expect(hsmHelper.state(), 'off');
    hsmHelper.run('RESET');
    expect(hsmHelper.state(), 'off');
  });

}
