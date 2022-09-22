import 'package:do_an_di_dong/src/input_info.dart';

import 'package:flutter/cupertino.dart';

class SignIn extends StatelessWidget {
  SignIn({Key? key}) : super(key: key);
  final TextEditingController account = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.all(5),
        backgroundColor: CupertinoColors.link,
        middle: Text(
          'Sign in',
          style: TextStyle(
              color: Color.fromARGB(255, 236, 251, 102), fontSize: 20),
        ),
      ),
      child: InputInfo(),
    );
  }
}
