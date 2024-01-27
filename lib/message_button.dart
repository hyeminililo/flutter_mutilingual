import 'package:intl/intl.dart';

String helloWorld() => Intl.message("Hello World",
    name: "helloWorld", args: [], desc: "Hello world message");

String openButton() => Intl.message("openButton",
    name: "helloWorld", args: [], desc: "This is an openButton ");

void main() {
  print(helloWorld());
  print(openButton());
}
