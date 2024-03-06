import 'package:flutter/material.dart';
import 'package:js/js.dart';

import 'dog.dart';

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
              dog.sleep(Options(bed: true, hardness: "Soft"));
            },
            child: Text('Interact with JS'),
          ),
        ),
      ),
    );
  }
}
