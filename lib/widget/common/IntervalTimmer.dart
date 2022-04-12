import 'dart:async';

void IntervalTimmer(Function fn, int duration) {
  Timer.periodic(Duration(seconds: duration), (timer) {
    fn;
  });
}
