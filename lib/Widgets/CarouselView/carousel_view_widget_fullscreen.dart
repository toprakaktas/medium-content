import 'package:flutter/material.dart';

class CarouselViewWidgetFullScreen extends StatefulWidget {
  const CarouselViewWidgetFullScreen({super.key});

  @override
  State<CarouselViewWidgetFullScreen> createState() =>
      _CarouselViewWidgetFullScreenState();
}

class _CarouselViewWidgetFullScreenState
    extends State<CarouselViewWidgetFullScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: const Text(
          'CarouselView Full-Screen Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: CarouselView(
        scrollDirection: Axis.vertical,
        itemExtent: double.infinity,
        itemSnapping: true,
        children: List<Widget>.generate(10, (int index) {
          return Image.network(
            'https://picsum.photos/500/800?image=$index',
            fit: BoxFit.cover,
          );
        }),
      ),
    );
  }

// OR with CarouselView.weighted
/*
body: CarouselView.weighted(
  scrollDirection: Axis.vertical,
  flexWeights: [1],
  itemSnapping: true,
  children: List<Widget>.generate(10, (int index) {
   return Image.network(
     'https://picsum.photos/500/900/?image=$index',
     fit: BoxFit.cover,
    ),
   );
  }))*/
}
