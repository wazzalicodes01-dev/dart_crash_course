
In Dart, everything revolves around objects and types, even when writing simple programs. A typical Dart program starts with a main() function, which acts as the entry point. For example:

void main() {
  print('Hello, Dart!');
}
This code defines a function named main that returns no value (void). Inside the function, the print statement outputs text to the console.

Variables in Dart are strongly typed but can be inferred using the var keyword. For instance:
var name = 'Alice';
int age = 25;
Here, name is inferred as a String, while age is explicitly declared as an int. Dart also supports constants using const and final. The difference is that const values are compile-time constants, while final values are set only once at runtime.

for (int i = 0; i < 3; i++) {
  print(i);
}
This loop prints numbers from 0 to 2. Dart also emphasizes null safety, meaning variables cannot contain null unless explicitly allowed using ?, like String?.
Overall, Dart is designed to be easy to read and write, making it a great choice for beginners learning programming fundamentals.


