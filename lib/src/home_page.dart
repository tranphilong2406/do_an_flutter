import 'package:flutter/cupertino.dart';
import 'my_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // const HomePage();
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(255, 2, 236, 212),
        middle: Text(
          'Demo',
          style: TextStyle(
              color: Color.fromARGB(255, 241, 239, 138),
              fontSize: 25,
              fontStyle: FontStyle.italic),
        ),
      ),
      child: const MyPage(),
    );
  }
}
