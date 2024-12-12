import 'switch_reset_helper.dart';

String run() {
  testSwitch();
  return 'Was done';
}

void testSwitch() {
  Switch_resetHelper hsmHelper = Switch_resetHelper();
  hsmHelper.init();
  hsmHelper.run('TURN');
  hsmHelper.run('RESET');
  hsmHelper.run('TURN');
  hsmHelper.run('TURN');
  hsmHelper.run('RESET');
}