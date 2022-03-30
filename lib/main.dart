import 'package:flutter/material.dart';
import 'package:gameball/constants.dart';
import 'package:gameball/pages/sign_up_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: kAppBarColor,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            fixedSize: MaterialStateProperty.all<Size>(kElevatedButtonSize),
            backgroundColor:
                MaterialStateProperty.all<Color>(kElevatedButtonColor),
          ),
        ),
        scaffoldBackgroundColor: kScaffoldBackgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: const SignUpPage(),
    );
  }
}
