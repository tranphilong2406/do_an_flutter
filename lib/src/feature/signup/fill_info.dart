import 'package:do_an_di_dong/src/feature/signup/sign_up.dart';
import 'package:flutter/cupertino.dart';

class FillInfo extends StatefulWidget {
  const FillInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _FillStateInfo();
}

class _FillStateInfo extends State<FillInfo> {
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();
  final _repassController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        const Padding(padding: EdgeInsets.all(10)),
        CupertinoTextField(
          controller: _usernameController,
          placeholder: 'Username',
          padding: const EdgeInsets.all(15),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        CupertinoTextField(
          controller: _emailController,
          placeholder: 'Email',
          padding: const EdgeInsets.all(15),
          keyboardType: TextInputType.emailAddress,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        CupertinoTextField(
          controller: _passController,
          placeholder: 'Password',
          padding: const EdgeInsets.all(15),
          obscuringCharacter: '*',
          obscureText: true,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        CupertinoTextField(
          controller: _repassController,
          placeholder: 'Retype password',
          padding: const EdgeInsets.all(15),
          obscuringCharacter: '*',
          obscureText: true,
        ),
        const Padding(padding: EdgeInsets.all(10)),
        CupertinoButton(
            child: Text('Sign up'),
            color: CupertinoColors.link,
            onPressed: () {})
      ],
    ));
  }
}
