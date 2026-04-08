void main(List<String> args) {
  const input = 12;
  final output = compliment(input);
  print(output);
  personAndPet('Fluffy', 'Chris');
  print(fullName('Ray', 'Patrick'));
  print(fullName('Albert', 'Einstein', 'Professor'));
  print(withinTolerance(5));
  print(withinTolerance(15));
  print('withinTolerance(9, 7, 11) = ${withinTolerance(9, 7, 11)}');
  print('withinTolerance(9, 7) = ${withinTolerance(9, 7)}');
  print('withInTolerance(value: 23) = ${withInTolerance(value: 23)}');
  print(youAreWonderful('Bob', 10));
  print(weAreWonderful(name: 'Jesse'));
  print('multiplication(2, 5) = ${multiplication(2, 5)}');

  final triple = applyMultiplier(3);
  print('triple = $triple');
  print('triple(6) = ${triple(6)}');
  print('triple(14.0) = ${triple(14.0)}');

  // Anonymous functions in forEach loops.
  const numbers = [1, 2, 3];
  for (var number in numbers) {
    final tripled = number * 3;
    print(tripled);
  }

  final counter1 = countingFunction();
  final counter2 = countingFunction();
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());
  print(counter1());
  print(counter2());

  print('divide(100, 87) = ${divide(100, 87)}');
}

String compliment(int number) {
  return '$number is a very nice number.';
}

void personAndPet(String person, String pet) {
  print('Hello $person, and your furry friend, $pet!');
}

String fullName(String first, String last, [String? title]) {
  if (title != null) {
    return '$title $first $last';
  } else {
    return '$first $last';
  }
}

// Providing default values.
bool withinTolerance(int value, [int min = 0, int max = 10]) {
  return min <= value && value <= max;
}

bool withInTolerance({required int value, int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

String youAreWonderful(String name, int number) {
  return 'You are wonderful, $name! $number people think so.';
}

String weAreWonderful({required String name, int number = 30}) {
  return 'You are wonderful, $name! $number people think so.';
}

// Anonymous functions.
// Assigning functions to variables.
int number = 4;
String greeting = 'Hello';
bool isHungry = true;
Function multiply = (int a, int b) {
  return a * b;
};
// Using anonymous functions.
int multiplication(int a, int b) {
  return a * b;
}

// Returning a function.
Function applyMultiplier(num multiplier) {
  return (num value) {
    return value * multiplier;
  };
}

Function countingFunction() {
  var counter = 0;
  final incrementCounter = () {
    counter += 1;
    return counter;
  };
  return incrementCounter;
}

// Arrow functions.
int add(int a, int b) => a + b;
final divide = (int a, int b) => a / b;
