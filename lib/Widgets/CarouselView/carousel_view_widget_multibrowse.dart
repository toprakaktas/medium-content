import 'package:flutter/material.dart';

class CarouselViewWidgetMultiBrowse extends StatefulWidget {
  const CarouselViewWidgetMultiBrowse({super.key});

  @override
  State<CarouselViewWidgetMultiBrowse> createState() =>
      _CarouselViewWidgetMultiBrowseState();
}

class _CarouselViewWidgetMultiBrowseState
    extends State<CarouselViewWidgetMultiBrowse> {
  final CarouselController _controller = CarouselController(initialItem: 3);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(
          'CarouselView Multi-Browse Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 500),
          child: CarouselView.weighted(
            controller: _controller,
            flexWeights: const <int>[1, 2, 5, 2, 1],
            itemSnapping: true,
            children: List<Widget>.generate(20, (int index) {
              return Image.network(
                'https://picsum.photos/500/800?image=$index',
                fit: BoxFit.cover,
              );
            }),
          ),
        ),
      ),
    );
  }
}
