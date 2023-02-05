import 'package:high_scores/high_scores.dart';

void main(List<String> args) {
  final scores = HighScores(<int>[50, 20, 30, 70]);

  print(scores.personalTopThree());
  print(scores.latest());
}
