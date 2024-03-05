import 'package:flutter/material.dart';
import 'package:js/js.dart';

@JS()
@anonymous
class Options {
  external bool get bed;
  external String get hardness;
  external factory Options({bool bed, String hardness});
}

@JS()
class Dog {
  external Dog(String name, int age);
  external String get name;
  external int get age;
  external void bark();
  external void jump(Function(int height) func);
  external void sleep(Options options);
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Flutter JS Interop Example')),
        body: Center(
          child: TextButton(
            onPressed: () {
              var dog = Dog("Bear", 12);
              dog.bark();
              print(dog.age);
              print(dog.name);
              dog.jump(allowInterop((int height) {
                print(height);
              }));
              dog.sleep(Options(bed: true, hardness: "Soft"));
            },
            child: Text('Interact with JS'),
          ),
        ),
      ),
    );
  }
}
