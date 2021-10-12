import 'package:ajobox/Views/onboarding_screen.dart';
import 'package:flutter/material.dart';

import 'Views/Authenticaion/number_auth.dart';

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
       
      },
    );
  }
}
