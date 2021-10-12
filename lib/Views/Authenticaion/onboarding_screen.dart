import 'package:ajobox/Utils/Buttons/versatile_button.dart';
import 'package:ajobox/Utils/ajobox_theme.dart';
import 'package:ajobox/Utils/constants.dart';
import 'package:ajobox/Utils/text_terms.dart';
import 'package:flutter/material.dart';
import 'signIn.dart';

class OnboardingScreen extends StatelessWidget {
  static const routeName = '/onboarding';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 37),
              child: Container(
                child: Image(
                  image: AssetImage('images/greenajologo.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                width: double.infinity,
                height: screenHeightPercentage(context, percentage: 0.5),
                child: Image(
                  image: AssetImage('images/therapygroup.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            verticalRegularSpacing,
            SizedBox(
              width: screenWidthPercentage(context, percentage: 0.7),
              child: Text(
                'A better way to save in groups and collect in turns',
                textAlign: TextAlign.center,
                style: ktsblackBodyText.copyWith(
                    fontFamily: 'Alata',
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF333333),
                    fontSize: 24),
              ),
            ),
            verticalRegularSpacing,
            SizedBox(
              width: screenWidthPercentage(context, percentage: 0.7),
              child: Text(
                  'You can invite any friends, join any society of choice, and start saving a cliques for common interest',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color(0xFF555555),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400)),
            ),
            verticalRegularSpacing,
            VersatileButton(
              text: 'Get Started',
              color: Color(0xff21844E),
              onPress: () {
                Navigator.of(context).pushNamed(
                  NumberAuth.routeName,
                );
              },
            ),
            verticalRegularSpacing,
            TextTerms(
              text: 'Have an account?',
              navText: 'Log In',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
