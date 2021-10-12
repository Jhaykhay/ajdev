import 'package:flutter/material.dart';

class InputMaterial extends StatelessWidget {
  final String inputText;
  final TextInputType keyboardType;
  final Function validator;
  final TextEditingController controller;
  final Color color;
  final bool obscuretext;
  final Widget suffixicon;
  InputMaterial({
    this.inputText,
    this.keyboardType,
    this.validator,
    this.controller,
    this.color,
    this.obscuretext,
    this.suffixicon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0.0),
      child: TextFormField(
        style: TextStyle(color: Colors.black),
        controller: controller,
        obscureText: false,
        decoration: InputDecoration(
          fillColor: Colors.grey.shade300,
          filled: true,
          hintText: inputText,
          suffixIcon: suffixicon,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none),
        ),
        keyboardType: keyboardType,
        validator: validator,
      ),
    );
  }
}
