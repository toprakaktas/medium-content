import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  const CupertinoAlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          automaticBackgroundVisibility: false,
          backgroundColor: Color(0xFFB39DDB),
          middle: Text(
            'CupertinoAlertDialog Demo',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        child: Center(
            child: CupertinoButton(
          pressedOpacity: 0.5,
          onPressed: () => showCupertinoDialog(
              useRootNavigator: true,
              context: context,
              builder: (_) => CupertinoAlertDialog(
                    title: Text('CupertinoAlertDialog Title'),
                    content: Text('CupertinoAlertDialog content here.'),
                    actions: <CupertinoDialogAction>[
                      CupertinoDialogAction(
                          onPressed: () => (Navigator.of(context).pop()),
                          isDefaultAction: true,
                          child: Text("Cancel")),
                      CupertinoDialogAction(
                          onPressed: () => (Navigator.pop(context, 'Ok')),
                          isDestructiveAction: true,
                          child: Text("Ok")),
                    ],
                  )),
          child: Text(
            'Click Me!',
            style: TextStyle(fontSize: 18),
          ),
        )));
  }
}
