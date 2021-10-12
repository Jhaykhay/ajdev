import 'package:ajobox/Utils/Buttons/versatile_button.dart';
import 'package:ajobox/Utils/text_terms.dart';
import 'package:ajobox/Views/Authenticaion/confirmPin.dart';
import 'package:ajobox/Views/Authenticaion/resetOtp.dart';
import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';

class CreatePin extends StatelessWidget {
  static const routeName = 'createPin';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            "images/ajoboxlgtext.png",
            fit: BoxFit.contain,
            height: 200.0,
          ),
          elevation: 0.0,
          centerTitle: true,
          // ignore: prefer_const_constructors
          backgroundColor: Color(0xFF21844E),
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back),
            color: Colors.white,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Stack(children: <Widget>[
                Container(
                  height: 100,
                  decoration: BoxDecoration(
                      color: Color(0xFF21844E),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(20),
                                width: double.infinity,
                                height:
                                    MediaQuery.of(context).size.height * 0.9,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      'Create New Pin',
                                      style: TextStyle(
                                          color: Color(0xFF333333),
                                          fontSize: 24,
                                          fontFamily: 'Alata'),
                                    ),
                                    SizedBox(
                                      height: 15.0,
                                    ),
                                    Text(
                                      'Set your 4-digit PIN to secure your account',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Poppins'),
                                    ),
                                    SizedBox(
                                      height: 50,
                                    ),
                                    CircleAvatar(
                                      backgroundImage:
                                          AssetImage('images/padlock.png'),
                                      backgroundColor: Color(0xFFddffdd),
                                      radius: 30,
                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),
                                    Center(
                                      child: OTPTextField(
                                        length: 4,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        fieldWidth: 55,
                                        style: TextStyle(fontSize: 17),
                                        textFieldAlignment:
                                            MainAxisAlignment.spaceAround,
                                        keyboardType: TextInputType.number,
                                        outlineBorderRadius: 0,
                                        fieldStyle: FieldStyle.box,
                                        onCompleted: (pin) {
                                          print("Completed: " + pin);
                                        },
                                      ),
                                    ),
                                    Spacer(),
                                    VersatileButton(
                                      text: 'Confirm Pin',
                                      color: Color(0xff21844E),
                                      onPress: () {
                                        Navigator.of(context).pushNamed(
                                          ConfirmPin.routeName,
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextTerms(
                                      text: 'Don\t have an account?',
                                      navText: 'Sign Up',
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ])
            ],
          ),
        ));
  }
}
