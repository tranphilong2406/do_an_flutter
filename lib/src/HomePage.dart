import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
            child: Text('Tap me!!'),
            color: CupertinoColors.activeOrange,
            onPressed: () {
              showDialog(context);
            }),
      ),
    );
  }

  void showDialog(BuildContext context) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
              title: const Text('This is an Alert'),
              actions: [
                CupertinoDialogAction(
                  child: const Text('Nope'),
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoDialogAction(
                  child: const Text('Hello'),
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ));
  }
}
