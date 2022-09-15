import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  const HomePage();
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
            child: Text('Tap me!!'),
            color: CupertinoColors.activeOrange,
            onPressed: () {}),
      ),
    );
  }
}
