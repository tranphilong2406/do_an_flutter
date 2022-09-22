import 'package:do_an_di_dong/src/feature/signup/fill_info.dart';
import 'package:flutter/cupertino.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        padding: EdgeInsetsDirectional.all(5),
        backgroundColor: CupertinoColors.link,
        middle: Text(
          'Sign up',
          style: TextStyle(
              color: Color.fromARGB(255, 236, 251, 102), fontSize: 20),
        ),
      ),
      child: FillInfo(),
    );
  }
}
