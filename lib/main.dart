import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';
import 'package:gameball/pages/sign_up_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(
              const Size(
                100.0,
                30.0,
              ),
            ),
            backgroundColor: MaterialStateProperty.all<Color>(
              const Color(0xFFF9CD4E),
            ),
          ),
        ),
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(),
    );
  }
}
