import 'package:ajobox/Utils/Buttons/versatile_button.dart';
import 'package:ajobox/Utils/constants.dart';
import 'package:ajobox/Utils/input_material.dart';
import 'package:ajobox/Utils/text_terms.dart';
import 'package:flutter/material.dart';
import 'package:ajobox/Utils/ajobox_theme.dart';

class NumberAuth extends StatelessWidget {
  static const routeName = 'authnumber';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff21844E),
        title: Image.asset(
          'images/ajowhitelogo.png',
          fit: BoxFit.contain,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
          ),
          onPressed: () {},
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: screenHeightPercentage(context, percentage: 0.2),
                decoration: BoxDecoration(
                  color: Color(0xff21844E),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8),
                  ),
                ),
              ),
              Container(
                height: screenHeightPercentage(context, percentage: 0.6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 30, left: 25, right: 25, bottom: 10),
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width:
                                screenWidthPercentage(context, percentage: 0.6),
                            child: Text(
                              'Sign in to Ajobox',
                              textAlign: TextAlign.center,
                              style: ktsblackBodyText.copyWith(
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          verticalRegularSpacing,
                          SizedBox(
                            width:
                                screenWidthPercentage(context, percentage: 0.6),
                            child: Text(
                              'Enter your phone number and your PIN \n to log in',
                              textAlign: TextAlign.center,
                              style: ktsLessblackBodyText.copyWith(
                                  fontFamily: 'Poppins'),
                            ),
                          ),
                          Text(
                            'PHone Number',
                            textAlign: TextAlign.start,
                            style: ktsLessblackBodyText.copyWith(
                                fontFamily: 'Poppins'),
                          ),
                          Text(
                            'Ajobox PIN',
                            textAlign: TextAlign.start,
                            style: ktsLessblackBodyText.copyWith(
                                fontFamily: 'Poppins'),
                          ),
                          verticalRegularSpacing,
                          InputMaterial(
                            obscuretext: true,
                            suffixicon: Icon(
                              Icons.visibility,
                            ),
                          ),
                          verticalRegularSpacing,
                          Text(
                            'Forget PIN',
                            textAlign: TextAlign.end,
                            style: ktsGreenBodyText.copyWith(
                                fontFamily: 'Poppins'),
                          ),
                          VersatileButton(text: 'Log in', onPress: () {}),
                          verticalRegularSpacing,
                          TextTerms(
                            text: "Don't have an account?",
                            navText: 'Sign UP',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
//  Row(
//           children: [
//             // IconButton(icon: Icon(Icons.arrow_back_ios), onPressed: null),
//           ],
//         ),
