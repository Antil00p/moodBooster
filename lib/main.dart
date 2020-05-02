import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodbooster/select_function_button.dart';

import 'cat_screen.dart';
import 'constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: HomePage(),
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF15151E),
        scaffoldBackgroundColor: kAppBackgroundColor,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Halloj :D',
          style: TextStyle(),
          textAlign: TextAlign.center,
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            flex: 7,
            child: Container(
              margin: EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0),
              color: Colors.white,
              child: Image.asset(
                'images/welcome_fox.png',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Welcome, how can I help you?',
                style: kBodyTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                SelectionFunctionButton(
                  icon: FontAwesomeIcons.cat,
                  colour: kFunctionColor,
                  onPress: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CatScreen()));
                  },
                ),
                SelectionFunctionButton(
                  icon: FontAwesomeIcons.wineGlass,
                  colour: Color(0xF015151E),
                  iconColour: kDisabledIconColor,
                  onPress: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
