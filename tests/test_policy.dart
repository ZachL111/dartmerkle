import '../lib/policy.dart';

void main() {
  const signalcase_1 = Signal(55, 98, 13, 6, 9);
  assert(Policy.score(signalcase_1) == 163);
  assert(Policy.classify(signalcase_1) == 'accept');
  const signalcase_2 = Signal(59, 87, 18, 15, 4);
  assert(Policy.score(signalcase_2) == 99);
  assert(Policy.classify(signalcase_2) == 'review');
  const signalcase_3 = Signal(104, 72, 10, 7, 10);
  assert(Policy.score(signalcase_3) == 242);
  assert(Policy.classify(signalcase_3) == 'accept');
}
