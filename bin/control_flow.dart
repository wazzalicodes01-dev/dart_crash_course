import 'dart:math';

const global = 'Hello, World';

void main(List<String> args) {
  const doesOneEqualTwo = 1 == 2;
  print('doesOneEqualTwo = $doesOneEqualTwo');
  const doesOnneNotEqualTwo = 1 != 2;
  print('doesOnneNotEqualTwo = $doesOnneNotEqualTwo');
  const isSunny = true;
  const isFinished = true;
  print('willGoCycling = ${isSunny && isFinished}');
  const willTravelToAustralia = true;
  const canFindFoto = false;
  print(
    'canDrawPlatypus = ${willTravelToAustralia || canFindFoto}',
  ); // canFinndFoto is a dead code which means not need to verify.

  if (2 > 1) {
    print('Yes 2 is greater than 1!');
  }

  const animal = 'Fox';
  if (animal == 'Cat' || animal == 'Dog') {
    print('Animal is ahouse pet.');
  } else {
    print('Animal is not a house pet.');
  }

  const trafficLight = 'yellow';
  var command = '';
  if (trafficLight == 'red') {
    command = 'STOP';
  } else if (trafficLight == 'yellow') {
    command = 'SLOW DOWN';
  } else if (trafficLight == 'green') {
    command = 'GO';
  } else {
    command = 'INVALID COLOR';
  }
  print('command = $command');

  const local = 'Hello, main';
  if (2 > 1) {
    const insideIf = 'Hello, anybody?';
    print(global);
    print(local);
    print(insideIf);
  }

  print(global);
  print(local);
  // print(insideIf);  // Not allowed

  // Ternary Operator.
  const score = 83;
  const message = (score >= 60) ? 'You passed!' : 'You failed';
  print('message = $message');

  // Switch statements.
  const number = 3;
  switch (number) {
    case 0:
      print('Zero');
      break;
    case 1:
      print('One');
      break;
    case 2:
      print('Two');
      break;
    case 3:
      print('Three');
      break;
    case 4:
      print('Four');
      break;
    default:
      print('Something else');
  }

  // Switching on strings.
  const weather = 'cloudly';
  switch (weather) {
    case 'sunny':
      print('Put on sunscreen');
      break;
    case 'snowy':
      print('Get your skis');
      break;
    case 'cloudly':
    case 'rainy':
      print('Bring an umbrella');
      break;
    default:
      print('Im not familiar with that weather!');
  }

  // Enumerated types.
  const weatherToday = Weather.cloudy;
  switch (weatherToday) {
    case Weather.sunny:
      print('Put on sunscreen');
      break;
    case Weather.snowy:
      print('Get your skis');
      break;
    case Weather.cloudy:
    case Weather.rainy:
      print('Bring an umbrella');
      break;
  }
  print('weatherToday = $weatherToday');
  final index = weatherToday.index;
  print('index = $index');

  // While loops.
  var sum = 1;
  while (sum < 10) {
    sum += 1;
    print('sum = $sum');
  }

  // Do-while loops.
  sum = 1;
  do {
    sum += 1;
    print('sum = $sum');
  } while (sum < 10);

  // Breaking out of a loop.
  sum = 1;
  while (true) {
    sum += 4;
    if (sum > 10) {
      break;
    }
  }

  // A random interlude.
  final random = Random();
  while (random.nextInt(6) + 1 != 6) {
    print('Not a six!');
  }
  print('Finally, we got a six!');

  // For loops.
  for (var i = 0; i < 5; i++) {
    print(i);
  }

  // With continue keyword.
  for (var i = 0; i < 5; i++) {
    if (i == 2) {
      continue;
    }
    print(i);
  }

  // For-in loops.
  const myString = 'I ❤ Dart';
  for (var codePoint in myString.runes) {
    print(String.fromCharCode(codePoint));
  }
}

enum Weather { sunny, snowy, cloudy, rainy }
