import 'dart:convert';

import 'package:intl/intl.dart';

extension StringExtensions on String {
  // 1. Checks if a string is null or empty
  bool get isNullOrEmpty => this.isEmpty;

  // 2. Checks if a string is null, empty, or consists of only whitespace
  bool get isNullOrBlank => this.trim().isEmpty;

  // 3. Capitalizes the first letter of the string
  String get capitalize =>
      this.isEmpty ? '' : this[0].toUpperCase() + this.substring(1);

  // 4. Converts a string to camel case (first word in lowercase, subsequent words capitalized)
  String get toCamelCase {
    return this.replaceAllMapped(RegExp(r'(_\w)'),
        (match) => match.group(0)!.substring(1).toUpperCase());
  }

  // 5. Converts a string to snake case (lowercase with underscores between words)
  String get toSnakeCase {
    return this
        .replaceAllMapped(RegExp(r'([a-z])([A-Z])'),
            (match) => '${match.group(1)}_${match.group(2)}')
        .toLowerCase();
  }

  // 6. Validates if the string is a valid email address
  bool get isEmail {
    final regex = RegExp(r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$");
    return regex.hasMatch(this);
  }

  // 7. Validates if the string is a valid phone number
  bool get isPhoneNumber {
    final regex = RegExp(
        r'^\+?(\d{1,3})?[-. ]?\(?\d{1,4}?\)?[-. ]?\d{1,4}[-. ]?\d{1,4}[-. ]?\d{1,9}$');
    return regex.hasMatch(this);
  }

  // 8. Reverses the string
  String get reverse => this.split('').reversed.join('');

  // 9. Checks if the string contains only numbers
  bool get isNumeric => double.tryParse(this) != null;

  // 10. Converts a string to title case (capitalizes the first letter of each word)
  String get toTitleCase {
    return this.split(' ').map((word) {
      return word.isEmpty
          ? word
          : word[0].toUpperCase() + word.substring(1).toLowerCase();
    }).join(' ');
  }

  // 11. Converts a string to DateTime
  DateTime? get toDateTime {
    try {
      return DateTime.parse(this);
    } catch (e) {
      return null;
    }
  }

  // 12. Converts a string to an integer
  int? get toInt => int.tryParse(this);

  // 13. Converts a string to a double
  double? get toDouble => double.tryParse(this);

  // 14. Counts the occurrences of a substring within the string
  int countOccurrences(String sub) {
    return this.split(sub).length - 1;
  }

  // 15. Truncates the string to the specified length
  String truncate(int length) {
    if (this.length > length) {
      return this.substring(0, length) + '...';
    }
    return this;
  }

  // 16. Strips HTML tags from the string
  String get stripHtmlTags {
    final regExp = RegExp(r'<[^>]*>');
    return this.replaceAll(regExp, '');
  }

  // 17. Converts the string to Base64 encoding
  String get toBase64 => base64Encode(utf8.encode(this));

  // 18. Decodes a Base64 encoded string back to its original value
  String get fromBase64 => utf8.decode(base64Decode(this));

  // 19. Pads the string from the left to a specified length with a given character
  String padLeft(int width, [String padding = ' ']) {
    return this.length < width ? padding * (width - this.length) + this : this;
  }

  // 20. Pads the string from the right to a specified length with a given character
  String padRight(int width, [String padding = ' ']) {
    return this.length < width ? this + padding * (width - this.length) : this;
  }

  // 21. Custom manipulation example (uppercase example)
  String customManipulation() {
    return this.toUpperCase(); // Example of a custom string manipulation
  }

  // 22. Remove whitespace from both ends of the string
  String get trimEnd => this.trimRight();

  // 23. Converts the string to a valid URL (Escapes special characters)
  String get toValidUrl => Uri.encodeFull(this);

  // 24. Converts the string to a valid URI (Escapes special characters)
  String get toValidUri => Uri.encodeComponent(this);

  // 25. Checks if the string is a valid URL
  bool get isValidUrl {
    final regex = RegExp(r'^(https?|ftp):\/\/[^\s/$.?#].[^\s]*$');
    return regex.hasMatch(this);
  }

  // 26. Checks if the string contains a substring (case-insensitive)
  bool containsIgnoreCase(String sub) {
    return this.toLowerCase().contains(sub.toLowerCase());
  }

  // 27. Removes all non-alphanumeric characters from the string
  String get removeNonAlphanumeric {
    return this.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
  }

  // 28. Converts string to a valid filename (removes invalid characters)
  String get toValidFilename {
    return this.replaceAll(RegExp(r'[<>:"/\\|?*]'), '_');
  }

  // 29. Replaces all occurrences of a substring with another substring (case-insensitive)
  String replaceAllIgnoreCase(String from, String to) {
    return this.replaceAllMapped(
      RegExp(from, caseSensitive: false),
      (match) => to,
    );
  }

  // 30. Checks if the string contains a valid credit card number
  bool get isCreditCardNumber {
    final regex = RegExp(
        r"^(?:4[0-9]{12}(?:[0-9]{3})?|5[1-5][0-9]{14}|6(?:011|5[0-9]{2})[0-9]{12}|3[47][0-9]{13}|(?:2131|1800|35\d{3})\d{11})$");
    return regex.hasMatch(this);
  }

  // 31. Converts a string to a list of words (splits the string by spaces)
  List<String> get toWordList {
    return this.split(' ');
  }

  // 32. Check if the string starts with a given prefix (case-insensitive)
  bool startsWithIgnoreCase(String prefix) {
    return this.toLowerCase().startsWith(prefix.toLowerCase());
  }

  // 33. Converts the string to an uppercase string (only letters)
  String get toUpperCaseLetters {
    return this.replaceAll(RegExp(r'[^a-zA-Z]'), '').toUpperCase();
  }

  // 34. Converts the string to a lowercase string (only letters)
  String get toLowerCaseLetters {
    return this.replaceAll(RegExp(r'[^a-zA-Z]'), '').toLowerCase();
  }

  // 35. Checks if the string is a valid JSON
  bool get isValidJson {
    try {
      jsonDecode(this);
      return true;
    } catch (e) {
      return false;
    }
  }

  // 36. Gets the number of words in the string
  int get wordCount {
    return this.trim().split(RegExp(r'\s+')).length;
  }

  // 37. Converts the string to a DateTime from a specific format (using `intl` package)
  DateTime? toDateTimeFromFormat(String format) {
    try {
      final formatter = DateFormat(format);
      return formatter.parse(this);
    } catch (e) {
      return null;
    }
  }

  // 38. Converts a string to the plural form
  String get toPlural {
    if (this.endsWith("y")) {
      return this.substring(0, this.length - 1) + "ies";
    } else if (this.endsWith("s") || this.endsWith("x") || this.endsWith("z")) {
      return this + "es";
    }
    return this + "s";
  }

  // 39. Checks if the string is a valid IPv4 address
  bool get isValidIpv4 {
    final regex = RegExp(
        r"^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$");
    return regex.hasMatch(this);
  }

  // 40. Checks if the string is a valid IPv6 address
  bool get isValidIpv6 {
    final regex = RegExp(r"([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}");
    return regex.hasMatch(this);
  }
}
