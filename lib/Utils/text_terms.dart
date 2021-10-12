import 'package:flutter/material.dart';

import 'ajobox_theme.dart';
import 'constants.dart';

class TextTerms extends StatelessWidget {
  final String text;
  final String navText;
  final Function onTap;
  const TextTerms({
    this.text,
    this.navText,
    this.onTap,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: ktsGreyBodyText,
        ),
        horizontalTinySpacing,
        GestureDetector(
          onTap: onTap,
          child: Text(
            navText,
            style: ktsGreenBodyText,
          ),
        ),
      ],
    );
  }
}
