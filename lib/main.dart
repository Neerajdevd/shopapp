import 'package:flutter/material.dart';
import 'package:shopapp/Homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            fontFamily: "Lato",
            brightness: Brightness.light,
            useMaterial3: true,
            inputDecorationTheme: const InputDecorationTheme(
                hintStyle: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 19,
                    color: Colors.white))),
        home: const Homepage());
  }
}
