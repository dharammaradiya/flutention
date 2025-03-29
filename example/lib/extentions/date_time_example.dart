import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class DateTimeExample extends StatelessWidget {
  final DateTime now = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DateTime Extensions Example")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Date: ${now.toDateString()}"),
          Text("Time: ${now.toTimeString()}"),
          Text("DateTime: ${now.toDateTimeString()}"),
          Text("Day of Week (Short): ${now.dayOfWeekShort}"),
          Text("Day of Week (Full): ${now.dayOfWeekFull}"),
          Text("Month (Short): ${now.monthShort}"),
          Text("Month (Full): ${now.monthFull}"),
          Text("Year and Month: ${now.yearMonth}"),
          Text("12-Hour Time: ${now.timeAMPM}"),
          Text("ISO 8601: ${now.toIso8601StringCustom()}"),
          Text("First Day of Month: ${now.firstDayOfMonth.toDateString()}"),
          Text("Last Day of Month: ${now.lastDayOfMonth.toDateString()}"),
          Text("Week of Year: ${now.weekOfYear}"),
          Text("Days in Month: ${now.daysInMonth}"),
          Text("Start of Week: ${now.startOfWeek.toDateString()}"),
          Text("End of Week: ${now.endOfWeek.toDateString()}"),
          Text("Is Today: ${now.isToday()}"),
          Text("Is Yesterday: ${now.isYesterday()}"),
          Text("Is Tomorrow: ${now.isTomorrow()}"),
          Text("Unix Timestamp: ${now.unixTimestamp}"),
          Text("+3 Days: ${now.addDays(3).toDateString()}"),
          Text("-3 Days: ${now.subtractDays(3).toDateString()}"),
        ],
      ),
    );
  }
}
