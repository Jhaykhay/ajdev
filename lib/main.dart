import 'package:ajobox/Views/Authenticaion/confirmPin.dart';
import 'package:ajobox/Views/Authenticaion/createPin.dart';
import 'package:ajobox/Views/Authenticaion/resetOtp.dart';
import 'package:ajobox/Views/Authenticaion/resetPinScreen.dart';
import 'package:ajobox/Views/Authenticaion/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'Views/Authenticaion/signIn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: OnboardingScreen(),
      initialRoute: '/',
      routes: {
        NumberAuth.routeName: (context) => NumberAuth(),
        Login.routeName: (contex) => Login(),
        ResetPin.routeName: (contex) => ResetPin(),
        CreatePin.routeName: (contex) => CreatePin(),
        ConfirmPin.routeName: (contex) => ConfirmPin(),
      },
    );
  }
}
