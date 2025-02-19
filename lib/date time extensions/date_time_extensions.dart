import 'package:intl/intl.dart';

extension DateTimeFormatExtensions on DateTime {
  // Format to string with standard formats
  String toDateString() {
    return DateFormat('yyyy-MM-dd').format(this);
  }

  String toTimeString() {
    return DateFormat('HH:mm:ss').format(this);
  }

  String toDateTimeString() {
    return DateFormat('yyyy-MM-dd HH:mm:ss').format(this);
  }

  // Format to custom formats
  String toCustomDateFormat(String format) {
    return DateFormat(format).format(this);
  }

  // Day of the week (short, full)
  String get dayOfWeekShort {
    return DateFormat('EEE').format(this);
  }

  String get dayOfWeekFull {
    return DateFormat('EEEE').format(this);
  }

  // Month (short, full)
  String get monthShort {
    return DateFormat('MMM').format(this);
  }

  String get monthFull {
    return DateFormat('MMMM').format(this);
  }

  // Year with Month (e.g., February 2025)
  String get yearMonth {
    return DateFormat('MMMM yyyy').format(this);
  }

  // Time with AM/PM (12-hour clock)
  String get timeAMPM {
    return DateFormat('hh:mm a').format(this);
  }

  // ISO 8601 format
  String toIso8601StringCustom() {
    return this.toIso8601String();
  }

  // Time Zone Handling
  DateTime toLocalTimeZone() {
    return this.toLocal();
  }

  DateTime toUtcTimeZone() {
    return this.toUtc();
  }

  // Adding or Subtracting Time
  DateTime addDays(int days) {
    return this.add(Duration(days: days));
  }

  DateTime subtractDays(int days) {
    return this.subtract(Duration(days: days));
  }

  DateTime addHours(int hours) {
    return this.add(Duration(hours: hours));
  }

  DateTime subtractHours(int hours) {
    return this.subtract(Duration(hours: hours));
  }

  DateTime addMinutes(int minutes) {
    return this.add(Duration(minutes: minutes));
  }

  DateTime subtractMinutes(int minutes) {
    return this.subtract(Duration(minutes: minutes));
  }

  // Comparing Dates
  bool isToday() {
    return this.year == DateTime.now().year &&
        this.month == DateTime.now().month &&
        this.day == DateTime.now().day;
  }

  bool isYesterday() {
    return this.year == DateTime.now().subtract(Duration(days: 1)).year &&
        this.month == DateTime.now().subtract(Duration(days: 1)).month &&
        this.day == DateTime.now().subtract(Duration(days: 1)).day;
  }

  bool isTomorrow() {
    return this.year == DateTime.now().add(Duration(days: 1)).year &&
        this.month == DateTime.now().add(Duration(days: 1)).month &&
        this.day == DateTime.now().add(Duration(days: 1)).day;
  }

  // Week Number of Year
  int get weekOfYear {
    return int.parse(DateFormat('W').format(this));
  }

  // Number of Days in a Month
  int get daysInMonth {
    return DateTime(this.year, this.month + 1, 0).day;
  }

  // First and Last Day of Month
  DateTime get firstDayOfMonth {
    return DateTime(this.year, this.month, 1);
  }

  DateTime get lastDayOfMonth {
    return DateTime(this.year, this.month + 1, 0);
  }

  // Start of the Week (Sunday)
  DateTime get startOfWeek {
    return this.subtract(Duration(days: this.weekday));
  }

  // End of the Week (Saturday)
  DateTime get endOfWeek {
    return this.add(Duration(days: DateTime.saturday - this.weekday));
  }

  // Time Difference
  String timeDifference(DateTime other) {
    Duration difference = this.difference(other);
    int days = difference.inDays;
    int hours = difference.inHours % 24;
    int minutes = difference.inMinutes % 60;

    return '${days}d ${hours}h ${minutes}m';
  }

  // Get Unix Timestamp
  int get unixTimestamp {
    return this.millisecondsSinceEpoch ~/ 1000;
  }

  // From Unix Timestamp
  static DateTime fromUnixTimestamp(int timestamp) {
    return DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);
  }
}
