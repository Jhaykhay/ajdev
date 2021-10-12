import 'package:ajobox/Utils/Buttons/versatile_button.dart';
import 'package:ajobox/Utils/ajobox_theme.dart';
import 'package:ajobox/Utils/text_terms.dart';
import 'package:ajobox/Views/Authenticaion/createPin.dart';
import 'package:ajobox/Views/Authenticaion/resetOtp.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ResetPin extends StatelessWidget {
  static const routeName = 'resetPin';
  final TextEditingController controller = TextEditingController();
  String initialCountry = 'NG';
  PhoneNumber number = PhoneNumber(isoCode: 'NG');

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
            Stack(
              children: <Widget>[
                Container(
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFF21844E),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                    )),
                Container(
                  margin: EdgeInsets.fromLTRB(15.0, 0.0, 15.0, 0.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0)),
                  child: Column(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Column(children: [
                            Container(
                              padding: EdgeInsets.all(20),
                              width: double.infinity,
                              height: MediaQuery.of(context).size.height * 0.8,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'Reset Pin',
                                    style: TextStyle(
                                        color: Color(0xFF333333),
                                        fontSize: 24,
                                        fontFamily: 'Alata'),
                                  ),
                                  SizedBox(
                                    height: 10.0,
                                  ),
                                  Text(
                                    'Enter your phone number below and you will receive an OTP to reset PIN',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Poppins'),
                                  ),
                                  SizedBox(
                                    height: 40.0,
                                  ),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Text(
                                      'Phone Number',
                                      textAlign: TextAlign.start,
                                      style: TextStyle(
                                          color: Color(0xFF555555),
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'Poppins'),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  InternationalPhoneNumberInput(
                                    onInputChanged: (PhoneNumber number) {
                                      print(number.phoneNumber);
                                    },
                                    onInputValidated: (bool value) {
                                      print(value);
                                    },
                                    selectorConfig: SelectorConfig(
                                        selectorType:
                                            PhoneInputSelectorType.DROPDOWN,
                                        showFlags: true,
                                        trailingSpace: true,
                                        setSelectorButtonAsPrefixIcon: true),
                                    ignoreBlank: false,
                                    autoValidateMode: AutovalidateMode.disabled,
                                    selectorTextStyle:
                                        TextStyle(color: Colors.black),
                                    initialValue: number,
                                    textStyle:
                                        Theme.of(context).textTheme.caption,
                                    textFieldController: controller,
                                    inputBorder: InputBorder.none,
                                    inputDecoration: InputDecoration(
                                        fillColor: Colors.grey.shade300,
                                        filled: true,
                                        border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide.none)),
                                    formatInput: false,
                                    keyboardType:
                                        TextInputType.numberWithOptions(
                                            signed: true, decimal: true),
                                    onSaved: (PhoneNumber number) {
                                      print('On Saved: $number');
                                    },
                                  ),
                                  Spacer(),
                                  VersatileButton(
                                    text: 'Continue',
                                    color: Color(0xff21844E),
                                    onPress: () {
                                      Navigator.of(context).pushNamed(
                                        Login.routeName,
                                      );
                                    },
                                  ),
                                  SizedBox(
                                    height: 40,
                                  ),
                                  TextTerms(
                                    text: 'Don\t have an account?',
                                    navText: 'Sign Up',
                                    onTap: () {},
                                  ),
                                ],
                              ),
                            )
                          ])
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
