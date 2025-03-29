extension IntExtensions on int {
  // Check if the integer is even
  bool get isEven => this % 2 == 0;

  // Check if the integer is odd
  bool get isOdd => this % 2 != 0;

  // Get the factorial of the integer
  int get factorial {
    if (this < 0) return 0; // Factorial is not defined for negative integers
    int result = 1;
    for (int i = 1; i <= this; i++) {
      result *= i;
    }
    return result;
  }

  // Get the absolute value (in case it's negative)
  int get absolute => this < 0 ? -this : this;

  // Convert integer to a percentage
  double toPercentage(int total) => (this / total) * 100;

  // Check if the integer is within a range
  bool isInRange(int start, int end) => this >= start && this <= end;

  // Convert integer to a Duration (seconds)
  Duration get toDuration => Duration(seconds: this);

  // Get the number of digits in the integer
  int get digitCount => this.toString().length;

  // Check if the integer is prime
  bool get isPrime {
    if (this <= 1) return false;
    for (int i = 2; i <= this / 2; i++) {
      if (this % i == 0) return false;
    }
    return true;
  }

  // Get the square of the integer
  int get square => this * this;

  // Get the cube of the integer
  int get cube => this * this * this;

  // Get the number as a currency string (e.g., 1000 => "$1,000")
  String get toCurrency {
    return '\$${this.toString().replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',')}';
  }

  // Check if the integer is a perfect square
  bool get isPerfectSquare {
    double sqrtValue = (this).toDouble();
    return sqrtValue == sqrtValue.toInt().toDouble();
  }

  // Convert the integer to a human-readable format (e.g., 1000 => "1k")
  String get toHumanReadable {
    if (this >= 1000) {
      final thousands = (this / 1000).toStringAsFixed(1);
      return '${thousands}k';
    }
    return this.toString();
  }

  // Check if an integer is a Fibonacci number
  bool get isFibonacci {
    int x = 5 * this * this + 4;
    int y = 5 * this * this - 4;
    return _isPerfectSquare(x) || _isPerfectSquare(y);
  }

  // Helper method to check if a number is a perfect square
  bool _isPerfectSquare(int n) {
    int sqrtN = (n).toDouble().toInt();
    return sqrtN * sqrtN == n;
  }

  // Convert integer to a time string (e.g., 3600 => "1:00:00")
  String get toTimeString {
    int hours = this ~/ 3600;
    int minutes = (this % 3600) ~/ 60;
    int seconds = this % 60;
    return '${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }

  // Calculate the greatest common divisor (GCD) between two numbers
  int gcd(int b) {
    int a = this;
    while (b != 0) {
      int temp = b;
      b = a % b;
      a = temp;
    }
    return a;
  }

  // Calculate the Least Common Multiple (LCM) between two numbers
  int lcm(int b) {
    return (this * b) ~/ gcd(b);
  }

  // Check if the integer is a power of 2
  bool get isPowerOfTwo {
    return (this > 0) && (this & (this - 1)) == 0;
  }

  // Get the next prime number greater than the current integer
  int get nextPrime {
    int number = this + 1;
    while (!number.isPrime) {
      number++;
    }
    return number;
  }

  // Get the previous prime number smaller than the current integer
  int get previousPrime {
    int number = this - 1;
    while (number > 1 && !number.isPrime) {
      number--;
    }
    return number;
  }

  // Get a list of prime factors for the integer
  List<int> get primeFactors {
    List<int> factors = [];
    int n = this;
    for (int i = 2; i <= n ~/ 2; i++) {
      while (n % i == 0) {
        factors.add(i);
        n = n ~/ i;
      }
    }
    if (n > 1) factors.add(n);
    return factors;
  }

  // Convert integer to a binary string
  String get toBinaryString => this.toRadixString(2);

  // Convert integer to a hexadecimal string
  String get toHexadecimalString => this.toRadixString(16);

  // Check if the integer is an Armstrong number (Narcissistic number)
  bool get isArmstrong {
    int n = this;
    int sum = 0;
    int numberOfDigits = n.toString().length;
    int temp = n;
    while (temp > 0) {
      int digit = temp % 10;
      sum += digit.pow(numberOfDigits);
      temp = temp ~/ 10;
    }
    return sum == n;
  }

  // Raise the integer to the power of another integer
  int pow(int exponent) {
    int result = 1;
    for (int i = 0; i < exponent; i++) {
      result *= this;
    }
    return result;
  }

  // Get the sum of digits in the integer
  int get sumOfDigits {
    return this
        .toString()
        .split('')
        .map((e) => int.parse(e))
        .reduce((a, b) => a + b);
  }

  // Check if the integer is a palindrome
  bool get isPalindrome {
    String str = this.toString();
    return str == str.split('').reversed.join();
  }
}
