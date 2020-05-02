import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:moodbooster/screens/start_page.dart';
import 'utils/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartPage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF15151E),
        scaffoldBackgroundColor: kAppBackgroundColor,
      ),
    );
  }
}
