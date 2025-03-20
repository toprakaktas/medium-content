import 'package:flutter/material.dart';

class AlertDialogWidget extends StatelessWidget {
  const AlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[200],
        title: Text(
          'AlertDialog Demo',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => showDialog(
              context: context,
              builder: (_) => AlertDialog(
                    title: Text('AlertDialog Title'),
                    content: Text('AlertDialog content here.'),
                    actions: <Widget>[
                      TextButton(
                          onPressed: () => (Navigator.of(context).pop()),
                          style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.deepPurple[400]),
                            shape:
                                WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                          ),
                          child: Text('Cancel',
                              style: TextStyle(fontWeight: FontWeight.bold))),
                      TextButton(
                          onPressed: () => (Navigator.pop(context, 'Ok')),
                          style: ButtonStyle(
                            foregroundColor:
                                WidgetStatePropertyAll(Colors.deepPurple[400]),
                            shape:
                                WidgetStatePropertyAll(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )),
                          ),
                          child: Text(
                            'Ok',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                    ],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  )),
          style: ButtonStyle(
            foregroundColor: WidgetStatePropertyAll(Colors.deepPurple[400]),
            shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0))),
          ),
          child: const Text(
            'Click Me!',
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
    );
  }
}
