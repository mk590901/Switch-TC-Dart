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

/* without optimization
OFF
OFF: TURN
ON
@RESET
OFF
OFF: TURN
ON
ON : TURN
OFF
@RESET
OFF
App switch_tc: Was done!

Process finished with exit code 0

 */

/* with optimization
/home/michael-k/snap/flutter/common/flutter/bin/cache/dart-sdk/bin/dart --enable-asserts --no-serve-devtools /home/michael-k/AndroidStudioProjects/Flutter/switch_tc/bin/switch_tc.dart
OFF
OFF: TURN
ON
@RESET
OFF
OFF: TURN
ON
ON : TURN
OFF
@RESET
OFF
App switch_tc: Was done!

Process finished with exit code 0

 */