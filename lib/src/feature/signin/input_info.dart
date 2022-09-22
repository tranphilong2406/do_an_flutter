import 'dart:io';

import 'package:do_an_di_dong/src/homepage/my_page.dart';
import 'package:do_an_di_dong/src/util/dialog_notify.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputInfo extends StatefulWidget {
  const InputInfo({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _InputStateInfo();
}

class _InputStateInfo extends State<InputInfo> {
  final _accountController = TextEditingController();
  final _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Column(
      children: [
        const Padding(padding: EdgeInsets.all(20)),
        CupertinoTextField(
          controller: _accountController,
          placeholder: 'Your account ID',
          padding: const EdgeInsets.all(20),
        ),
        const Padding(padding: EdgeInsets.all(20)),
        CupertinoTextField(
          controller: _passController,
          placeholder: 'Your password',
          padding: const EdgeInsets.all(20),
          obscuringCharacter: '*',
          obscureText: true,
        ),
        const Padding(padding: EdgeInsets.all(20)),
        CupertinoButton(
            child: Text('Sign in'),
            color: CupertinoColors.link,
            onPressed: () {
              String acc = _accountController.text;
              String pass = _passController.text;
              if (checkAccount(context, acc, pass)) {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyPage()));
              }
            }),
      ],
    ));
  }

  bool checkAccount(BuildContext context, String acc, String pass) {
    if (acc == 'longtran' && pass == '123') {
      DialogNotify.showDialogSuccess(context, 'Đăng nhập thành công', 'OK');
      return true;
    } else if (acc == '' || pass == '') {
      DialogNotify.showDialogCustom(
          context, 'Vui lòng nhập tài khoản và mật khẩu', 'Cancel', 'OK');
      return false;
    } else {
      DialogNotify.showDialogCustom(
          context, 'Tài khoản hoặc mật khẩu không chính xác', 'Cancel', 'OK');
      return false;
    }
  }
}
