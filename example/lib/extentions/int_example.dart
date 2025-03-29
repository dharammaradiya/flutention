import 'package:flutention/flutention.dart';
import 'package:flutter/material.dart';

class IntExample extends StatefulWidget {
  @override
  _IntExampleState createState() => _IntExampleState();
}

class _IntExampleState extends State<IntExample> {
  int number = 0; // Default number
  TextEditingController textController = TextEditingController();

  void updateNumber(String value) {
    if (value.isNotEmpty) {
      setState(() {
        number = int.tryParse(value) ?? 0; // Convert input to integer
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Integer Extensions Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: textController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Enter a number',
                  border: OutlineInputBorder(),
                ),
                onSubmitted: updateNumber,
              ),
              SizedBox(height: 20),
              Text('Number: $number',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
              Divider(),
              _buildInfoTile('Even', number.isEven),
              _buildInfoTile('Odd', number.isOdd),
              _buildInfoTile('Factorial', number.factorial),
              _buildInfoTile('Absolute', number.absolute),
              _buildInfoTile('Digit Count', number.digitCount),
              _buildInfoTile('Square', number.square),
              _buildInfoTile('Cube', number.cube),
              _buildInfoTile('Binary', number.toBinaryString),
              _buildInfoTile('Hexadecimal', number.toHexadecimalString),
              _buildInfoTile('Currency Format', number.toCurrency),
              _buildInfoTile('Human Readable', number.toHumanReadable),
              _buildInfoTile('Is Prime', number.isPrime),
              _buildInfoTile('Is Perfect Square', number.isPerfectSquare),
              _buildInfoTile('Is Fibonacci', number.isFibonacci),
              _buildInfoTile('Is Palindrome', number.isPalindrome),
              _buildInfoTile('Next Prime', number.nextPrime),
              _buildInfoTile('Previous Prime', number.previousPrime),
              _buildInfoTile('Prime Factors', number.primeFactors.join(', ')),
              _buildInfoTile('Power of 2?', number.isPowerOfTwo),
              _buildInfoTile('GCD with 100', number.gcd(100)),
              _buildInfoTile('LCM with 100', number.lcm(100)),
              _buildInfoTile('Sum of Digits', number.sumOfDigits),
              _buildInfoTile('Time Format (HH:MM:SS)', number.toTimeString),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoTile(String title, dynamic value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Text('$title: $value', style: TextStyle(fontSize: 18)),
    );
  }
}
