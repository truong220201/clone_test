abstract class Regex {
  static RegExp regexLength = RegExp(r'^[0-9]{10}$');
  // static RegExp regexFormat = RegExp(r'^(?:[0]9)$');
  static RegExp regexFormat = RegExp(r'^0[0-9]*$');
}
