import 'package:flutter/material.dart';

class CarouselViewWidgetHero extends StatefulWidget {
  const CarouselViewWidgetHero({super.key});

  @override
  State<CarouselViewWidgetHero> createState() => _CarouselViewWidgetHeroState();
}

class _CarouselViewWidgetHeroState extends State<CarouselViewWidgetHero> {
  final CarouselController _controller = CarouselController(
    initialItem: 1,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(
          'CarouselView Hero Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(maxHeight: 500),
          child: CarouselView.weighted(
            itemSnapping: true,
            controller: _controller,
            flexWeights: const <int>[1, 5, 1],
            children: List<Widget>.generate(20, (int index) {
              return Image.network(
                'https://picsum.photos/500/?image=$index',
                fit: BoxFit.cover,
              );
            }),
          ),
        ),
      ),
    );
  }
}
