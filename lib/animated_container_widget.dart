import 'dart:math';
import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({super.key});

  @override
  State<AnimatedContainerWidget> createState() => _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  double _width = 50;
  double _height = 50;
  Color _firstColor = Colors.black;
  Color _secondColor = Colors.white;
  Color _thirdColor = Colors.grey;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);
  double _radian = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('AnimatedContainer Demo'),
          backgroundColor: Colors.grey[500],
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              AnimatedContainer(
                // Use the properties stored in the State class.
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [_firstColor, _secondColor, _thirdColor], transform: GradientRotation(_radian)),
                  borderRadius: _borderRadius,
                ),
                // Define how long the animation should take.
                duration: const Duration(seconds: 1),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.linear,
              ),
              AnimatedContainer(
                // Use the properties stored in the State class.
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [_firstColor, _secondColor, _thirdColor], transform: GradientRotation(_radian)),
                  borderRadius: _borderRadius,
                ),
                // Define how long the animation should take.
                duration: const Duration(seconds: 1),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.linear,
              ),
              AnimatedContainer(
                // Use the properties stored in the State class.
                width: _width,
                height: _height,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [_firstColor, _secondColor, _thirdColor], transform: GradientRotation(_radian)),
                  borderRadius: _borderRadius,
                ),
                // Define how long the animation should take.
                duration: const Duration(seconds: 1),
                // Provide an optional curve to make the animation feel smoother.
                curve: Curves.linear,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          // When the user taps the button
          onPressed: () {
            // Use setState to rebuild the widget with new values.
            setState(() {
              // Create a random number generator.
              final random = Random();

              // Generate a random width and height and radian
              _width = random.nextInt(100).toDouble();
              _height = random.nextInt(100).toDouble();
              _radian = random.nextDouble() * 360;

              // Generate a random color.
              _firstColor = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  0.9
              );

              _secondColor = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  0.9
              );

              _thirdColor = Color.fromRGBO(
                  random.nextInt(256),
                  random.nextInt(256),
                  random.nextInt(256),
                  0.9
              );

              // Generate a random border radius.
              _borderRadius =
                  BorderRadius.circular(random.nextInt(100).toDouble());
            });
          },
          child: const Icon(Icons.play_arrow),
        ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
  }
