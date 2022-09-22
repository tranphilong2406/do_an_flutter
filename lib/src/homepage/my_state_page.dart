import 'package:do_an_di_dong/src/homepage/my_page.dart';
import 'package:flutter/cupertino.dart';
import '../util/dialog_notify.dart';

class MyStatePage extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: Center(
            child: CupertinoButton(
                child: const Text(
                  "Click me!",
                ),
                color: const Color.fromARGB(255, 2, 236, 212),
                onPressed: () {
                  DialogNotify.showDialogCustom(
                      context, "Wellcome to the app", "Hi", "Hello");
                })));
  }
}
