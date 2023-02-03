class ArmstrongNumbers {
  BigInt strongNumber = BigInt.parse('0');

  bool isArmstrongNumber(String str) {
    int strLength = str.split('').length;

    for (int i = 0; i < strLength; i++) {
      BigInt number = BigInt.parse(str[i]);
      BigInt squareSum = BigInt.parse(str[i]);

      for (int j = 0; j < strLength - 1; j++) {
        squareSum = squareSum * number;
      }
      strongNumber = strongNumber + squareSum;
    }
    return str == strongNumber.toString();
  }
}
