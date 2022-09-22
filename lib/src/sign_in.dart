import 'package:flutter/cupertino.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          backgroundColor: Color.fromARGB(255, 133, 213, 253),
          middle: Text(
            'Sign in',
            style: TextStyle(color: Color.fromARGB(255, 236, 251, 102)),
          ),
        ),
        child: Column(
          children: [
            Text(
              'Account',
              style: TextStyle(color: Color.fromARGB(255, 181, 107, 107)),
            ),
            CupertinoTextField(
              placeholder: 'Your account ID',
              padding: const EdgeInsets.all(20),
            ),
            Text(
              'Password',
              style: TextStyle(color: Color.fromARGB(255, 181, 107, 107)),
            ),
            CupertinoTextField(
              placeholder: 'Your password',
              padding: const EdgeInsets.all(20),
              obscuringCharacter: '*',
              obscureText: true,
            ),
            CupertinoButton(
                child: Text('Sign in'),
                color: CupertinoColors.link,
                onPressed: () {})
          ],
        ));
  }
}
