import 'package:flutter/material.dart';
import 'package:medium_content/Widgets/CarouselView/carousel_view_widget_hero.dart';
import 'package:medium_content/Widgets/CarouselView/carousel_view_widget_multibrowse.dart';
import 'package:medium_content/Widgets/CarouselView/carousel_view_widget_uncontained.dart';
import 'package:medium_content/Widgets/animated_container_widget.dart';
import 'package:medium_content/Widgets/CarouselView/carousel_view_widget_fullscreen.dart';
import 'package:medium_content/Widgets/stepper_widget.dart';

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
      home: CarouselViewWidgetFullScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
