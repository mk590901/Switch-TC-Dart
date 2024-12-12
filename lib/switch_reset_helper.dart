//	Class Switch_resetHelper automatically generated at 2024-12-11 15:28:59
import '../core/q_hsm_helper.dart';
import '../core/threaded_code_executor.dart';

class Switch_resetHelper {
	final QHsmHelper	helper_ = QHsmHelper('switch');

	Switch_resetHelper() {
		createHelper();
	}

	// void switchEntry([Object? data]) {
	// }
	//
	// void switchInit([Object? data]) {
	// }

	void offEntry([Object? data]) {
		print ('OFF');
	}

	void offReset([Object? data]) {
		print ('@RESET');
	}

	// void offExit([Object? data]) {
	// }

	void offTurn([Object? data]) {
		print ('OFF: TURN');
	}

	void onEntry([Object? data]) {
		print ('ON ');
	}

	// void onExit([Object? data]) {
	// }

	void onTurn([Object? data]) {
		print ('ON : TURN');
	}

	void init() {
		helper_.post('init');
	}

	void run(final String eventName) {
		helper_.post(eventName);
	}

	void createHelper() {
		helper_.insert('switch', 'init', ThreadedCodeExecutor(helper_, 'off', [
			// switchEntry,
			// switchInit,
			offEntry,
		]));
		helper_.insert('off', 'RESET', ThreadedCodeExecutor(helper_, 'off', [
			offReset,
			// offExit,
			// switchInit,
			offEntry,
		]));
		helper_.insert('off', 'TURN', ThreadedCodeExecutor(helper_, 'on', [
			offTurn,
			onEntry,
		]));
		helper_.insert('on', 'RESET', ThreadedCodeExecutor(helper_, 'off', [
			offReset,
			// onExit,
			// offExit,
			// switchInit,
			offEntry,
		]));
		helper_.insert('on', 'TURN', ThreadedCodeExecutor(helper_, 'off', [
			onTurn,
			// onExit,
			// offExit,
			// switchInit,
			offEntry,
		]));
	}
}
