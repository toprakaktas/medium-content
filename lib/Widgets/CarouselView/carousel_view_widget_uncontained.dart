import 'package:flutter/material.dart';

class CarouselViewWidgetUncontained extends StatefulWidget {
  const CarouselViewWidgetUncontained({super.key});

  @override
  State<CarouselViewWidgetUncontained> createState() =>
      _CarouselViewWidgetUncontainedState();
}

class _CarouselViewWidgetUncontainedState
    extends State<CarouselViewWidgetUncontained> {
  final CarouselController _controller = CarouselController(initialItem: 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[200],
          title: Text(
            'CarouselView Uncontained Demo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        body: Center(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxHeight: 500),
            child: CarouselView(
                controller: _controller,
                itemExtent: 300.0,
                shrinkExtent: 200.0,
                children: List<Widget>.generate(20, (int index) {
                  return Image.network(
                    'https://picsum.photos/500/800/?image=$index',
                    fit: BoxFit.cover,
                  );
                })),
          ),
        ));
  }
}
