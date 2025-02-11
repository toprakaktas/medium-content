import 'package:flutter/material.dart';
import 'package:medium_context/animated_container_widget.dart';
import 'package:medium_context/stepper_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimatedContainerWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
