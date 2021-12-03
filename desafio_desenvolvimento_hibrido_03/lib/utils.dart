import 'dart:math';

class Utils {
  static String generateRandomString(int len) {
    var random = Random();
    const _chars =
        'AaBbCcEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz1234567890';
    return List.generate(len, (index) => _chars[random.nextInt(_chars.length)])
        .join();
  }

  static bool generateRandomEmbledState() {
    var random = Random();
    return random.nextInt(2) == 0 ? false : true;
  }
}
