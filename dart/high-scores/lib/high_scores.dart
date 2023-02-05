class HighScores {
  HighScores([this.scores]);
  List<int>? scores;

  int latest() => scores!.last;

  int personalBest() {
    int highest = 0;
    scores!.forEach((element) {
      if (element > highest) {
        highest = element;
      }
    });
    return highest;
  }

  List<int> personalTopThree() {
    List<int> temScores = scores!;
    List<int> topThree = [];
    int highest = 0;

    for (int i = 0; i < 3; i++) {
      if (temScores.isNotEmpty) {
        temScores.forEach((element) {
          if (element >= highest) {
            highest = element;
          }
        });
        temScores.remove(highest);
        topThree.add(highest);
        highest = 0;
      }
    }

    return topThree;
  }
}
