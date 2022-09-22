// ignore: file_names
import 'feature/signin/sign_in.dart';
import 'package:flutter/cupertino.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: SignIn(),
    );
  }
}
