import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SelectionFunctionButton extends StatelessWidget {
  SelectionFunctionButton(
      {@required this.icon,
      @required this.colour,
      this.iconColour,
      @required this.onPress});

  final IconData icon;
  final Color colour;
  final Color iconColour;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: EdgeInsets.all(5.0),
          width: 100,
          child: Icon(
            icon,
            color: iconColour,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: colour,
          ),
        ),
      ),
    );
  }
}
