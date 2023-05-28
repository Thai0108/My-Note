import 'dart:math';

class Utils {
  Utils._();

  static double randomDouble(double min0, double max0) {
    if (min0 > max0) {
      final max1 = max0;
      max0 = min0;
      min0 = max1;
    }
    double random = Random().nextDouble();
    min0 = random < min0 ? min0 + min0 - random : random;

    return min0 > max0 ? max0 : min0;
  }

  static int randomInt(int min0, int max0) {
    if (min0 > max0) {
      final max1 = max0;
      max0 = min0;
      min0 = max1;
    }
    int random = Random().nextInt(max0 - min0 + 1);
    min0 += random;

    return min0 > max0 ? max0 : min0;
  }

  static String randomString(int length) {
    var random = Random();
    return String.fromCharCodes(List.generate(length, (index) => random.nextInt(33) + 89));
  }
}
