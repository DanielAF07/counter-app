import 'package:flutter/material.dart';
import 'package:hello_flutter/presentation/screens/counter/counter_functions_screen.dart';
// import 'package:hello_flutter/presentation/screens/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.purple),
      debugShowCheckedModeBanner: false,
      home: const CounterFunctionsScreen(),
    );
  }
}
