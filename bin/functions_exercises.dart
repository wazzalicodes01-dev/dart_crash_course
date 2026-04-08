/*
Change the youAreWonderful function in the first mini-
exercise of this chapter into an anonymous function.
Assign it to a variable called wonderful.
2. Using forEach, print a message telling the people in the
following list that they’re wonderful.
*/
import 'dart:math';

void main(List<String> args) {
  const people = ['Alice', 'Bob', 'Charlie', 'Danielle'];
  people.forEach(wonderful);
  const teachers = ['Chris', 'Tiffani', 'Pablo'];
  teachers.forEach(wonderful);

  print('isPrime(13) = ${isPrime(13)}'); // true
  print('isPrime(25) = ${isPrime(25)}'); // false
  print('isPrime(8893) = ${isPrime(8893)}'); // true

  // Passing an anonymous function to square the input
  int finalResult = repeatTask(4, 2, (int n) => n * n);
  print('finalResult = $finalResult');
}

var wonderful = (String name) {
  print('You are wonderful $name! Thanks for all!');
};

// Challenge 1: Prime time.
bool isPrime(int number) {
  // Numbers less than 2 are not prime
  if (number < 2) return false;
  // 2 is the only even prime number
  if (number == 2) return true;
  // Exclude all other even numbers immediately
  if (number % 2 == 0) return false;
  // Check for divisors from 3 up to the square root of the number
  // We skip even numbers in the loop for efficiency
  double boundary = sqrt(number);
  for (int i = 3; i <= boundary; i += 2) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

// Challenge 2: Can you repeat that?
int repeatTask(int times, int input, Function(int) task) {
  int result = input;
  for (int i = 0; i < times; i++) {
    result = task(result);
  }
  return result;
}
