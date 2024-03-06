@JS()
library dog;

import 'package:js/js.dart';

@JS()
class Dog {
  external factory Dog(String name, int age);
  external String get name;
  external int get age;
  external void bark();
  external void jump(Function(int height) func);
  external void sleep(Options options);
}

@JS()
@anonymous
class Options {
  external bool get bed;
  external String get hardness;
  external factory Options({bool bed, String hardness});
}
