void main(List<String> args) {
  num myNumber = 3.14;
  print('myNumber is double = ${myNumber is double}');
  print('myNumber is int => ${myNumber is int}');
  print('myNumber.runtimeType = ${myNumber.runtimeType}');
  // as type of variables we have int, double(decimal), num, dynamic and String.

  const number = 10;
  print(number is double);
  print(number is String);

  const hourlyRate = 19.5;
  const hoursWorked = 10;
  final totalCost = (hourlyRate * hoursWorked).toInt();
  print('totalCost = $totalCost');

  const age1 = 23;
  const age2 = 7;
  const averageAge = (age1 + age2) / 2;
  print(averageAge);
  print(averageAge.toInt());

  // String
  var greeting = 'Hello, Dart programers!';
  greeting = 'Hello, Flutter developpers!';
  print(greeting);

}