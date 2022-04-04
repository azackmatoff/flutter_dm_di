import 'package:flutter/material.dart';
import 'package:flutter_dm_di/app/presentation/views/sign_in/sign_in_view.dart';
import 'package:flutter_dm_di/app/utils/di/di_locator.dart';

void main() {
  initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter DM/DI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SignInView(),
    );
  }
}
