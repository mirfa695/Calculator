import 'package:calculator/Screen/calculator.dart';
import 'package:flutter/material.dart';
void main(){runApp(Main());}
class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      home: Calculator(
      ),
    theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black.withOpacity(.5),))),);
  }
}
