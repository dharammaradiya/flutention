import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class StringExample extends StatelessWidget {
  final String sampleText = "hello_world ExampleString 123@example.com 12345 <b>Bold</b>";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("String Extensions Example")),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Original: $sampleText"),
          Text("Is Null or Empty: ${sampleText.isNullOrEmpty}"),
          Text("Is Null or Blank: ${sampleText.isNullOrBlank}"),
          Text("Capitalize: ${sampleText.capitalize}"),
          Text("To Camel Case: ${sampleText.toCamelCase}"),
          Text("To Snake Case: ${sampleText.toSnakeCase}"),
          Text("Is Email: ${sampleText.isEmail}"),
          Text("Is Phone Number: ${sampleText.isPhoneNumber}"),
          Text("Reverse: ${sampleText.reverse}"),
          Text("Is Numeric: ${sampleText.isNumeric}"),
          Text("To Title Case: ${sampleText.toTitleCase}"),
          Text("To DateTime: ${sampleText.toDateTime}"),
          Text("To Int: ${sampleText.toInt}"),
          Text("To Double: ${sampleText.toDouble}"),
          Text("Count 'e': ${sampleText.countOccurrences("e")}"),
          Text("Truncate (10 chars): ${sampleText.truncate(10)}"),
          Text("Strip HTML Tags: ${sampleText.stripHtmlTags}"),
          Text("To Base64: ${sampleText.toBase64}"),
          Text("From Base64: ${sampleText.toBase64.fromBase64}"),
          Text("Trim End: ${sampleText.trimEnd}"),
          Text("To Valid URL: ${sampleText.toValidUrl}"),
          Text("To Valid Filename: ${sampleText.toValidFilename}"),
          Text("Word Count: ${sampleText.wordCount}"),
          Text("To Plural: ${"baby".toPlural}"),
          Text("Is Valid IPv4: ${"192.168.1.1".isValidIpv4}"),
          Text("Is Valid IPv6: ${"2001:db8::ff00:42:8329".isValidIpv6}"),
        ],
      ),
    );
  }
}