import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogNotify {
  static void showDialogCustom(
      BuildContext context, String title, String choose1, String choose2) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => Theme(
            data: ThemeData.dark(),
            child: CupertinoAlertDialog(
              title: Text(title),
              actions: [
                CupertinoDialogAction(
                  child: Text(choose1),
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoDialogAction(
                  child: Text(choose2),
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )));
  }

  static void showDialogSuccess(
      BuildContext context, String title, String choose1) {
    showCupertinoDialog(
        context: context,
        builder: (BuildContext context) => Theme(
            data: ThemeData.dark(),
            child: CupertinoAlertDialog(
              title: Text(title),
              actions: [
                CupertinoDialogAction(
                  child: Text(choose1),
                  isDestructiveAction: false,
                  isDefaultAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )));
  }
}
