import 'package:do_an_di_dong/src/util/dialog_notify.dart';
import 'package:flutter/cupertino.dart';

class InputInfo extends StatefulWidget {
  const InputInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputStateInfo();
}

class _InputStateInfo extends State<InputInfo> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        const Padding(padding: EdgeInsets.all(20)),
        const CupertinoTextField(
          placeholder: 'Your account ID',
          padding: EdgeInsets.all(20),
        ),
        const Padding(padding: EdgeInsets.all(20)),
        const CupertinoTextField(
          placeholder: 'Your password',
          padding: EdgeInsets.all(20),
          obscuringCharacter: '*',
          obscureText: true,
        ),
        const Padding(padding: EdgeInsets.all(20)),
        CupertinoButton(
            child: Text('Sign in'),
            color: CupertinoColors.link,
            onPressed: () {}),
      ],
    ));
  }

  void checkAccount(BuildContext context, String acc, String pass) {
    if (acc == 'longtran' && pass == '123') {
      DialogNotify.showDialogCustom(
          context, 'Đăng nhập thành công', 'OK', 'Cancel');
    }
  }
}
