int score([String? word]) {
  int score = 0;

  List<String> onePointLetters = [
    'A',
    'E',
    'I',
    'O',
    'U',
    'L',
    'N',
    'R',
    'S',
    'T',
  ];
  List<String> twoPointLetters = [
    'D',
    'G',
  ];
  List<String> threePointLetters = [
    'B',
    'C',
    'M',
    'P',
  ];
  List<String> fourPointLetters = [
    'F',
    'H',
    'V',
    'W',
    'Y',
  ];
  List<String> fivePointLetters = [
    'K',
  ];
  List<String> eightPointLetters = [
    'J',
    'X',
  ];
  List<String> tenPointLetters = [
    'Q',
    'Z',
  ];

  if (word != null) {
    word.runes.forEach((rune) {
      if (onePointLetters.contains(letterConversion(rune))) {
        score = score + 1;
      }
      if (twoPointLetters.contains(letterConversion(rune))) {
        score = score + 2;
      }
      if (threePointLetters.contains(letterConversion(rune))) {
        score = score + 3;
      }
      if (fourPointLetters.contains(letterConversion(rune))) {
        score = score + 4;
      }
      if (fivePointLetters.contains(letterConversion(rune))) {
        score = score + 5;
      }
      if (eightPointLetters.contains(letterConversion(rune))) {
        score = score + 8;
      }
      if (tenPointLetters.contains(letterConversion(rune))) {
        score = score + 10;
      }
    });
  }
  return score;
}

String letterConversion(int index) {
  return String.fromCharCode(index).toUpperCase();
}

// int score(String word) {
//   Map<String, int> letterValues = {
//     "a": 1,
//     "b": 3,
//     "c": 3,
//     "d": 2,
//     "e": 1,
//     "f": 4,
//     "g": 2,
//     "h": 4,
//     "i": 1,
//     "j": 8,
//     "k": 5,
//     "l": 1,
//     "m": 3,
//     "n": 1,
//     "o": 1,
//     "p": 3,
//     "q": 10,
//     "r": 1,
//     "s": 1,
//     "t": 1,
//     "u": 1,
//     "v": 4,
//     "w": 4,
//     "x": 8,
//     "y": 4,
//     "z": 10
//   };
//   return word
//       .toLowerCase()
//       .split('')
//       .fold(0, (score, letter) => score + letterValues[letter]!);
// }

