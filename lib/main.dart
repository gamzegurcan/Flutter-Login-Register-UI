import 'package:flutter/material.dart';
import 'package:ui/view/login_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Register Login App',
        debugShowCheckedModeBanner: false,
        home: LoginView());
  }
}
