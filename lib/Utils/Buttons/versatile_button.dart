import 'package:ajobox/Utils/constants.dart';
import 'package:flutter/material.dart';

import '../ajobox_theme.dart';

class VersatileButton extends StatelessWidget {
  final Color color;
  final String text;
  final Function onPress;
  const VersatileButton({
    this.color,
    this.text,
    this.onPress,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      focusColor: Colors.green.shade300,
      child: Container(
        height: 60,
        width: screenWidthPercentage(context, percentage: 0.8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            text,
            style: ktsButtonText,
          ),
        ),
      ),
    );
  }
}
