import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:moodbooster/utils/constants.dart';
import 'package:moodbooster/screens/cat_screen.dart';
import 'package:moodbooster/widgets/select_function_button.dart';

class StartPage extends StatefulWidget {
  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Start Page',
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
