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
  //print(insideIf);  // Not allowed

  // Ternary Operator.
  const score = 83;
  const message = (score >= 60) ? 'You passed!' : 'You failed';
  print('message = $message');

  // Switch statements.
}
