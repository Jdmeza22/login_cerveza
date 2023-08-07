

import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  PasswordInputState createState() => PasswordInputState();
}

class PasswordInputState extends State<PasswordInput> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        obscureText: _obscureText,
        decoration: InputDecoration(
          hintText: 'Password',
          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder( borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
          border: OutlineInputBorder( borderRadius: BorderRadius.circular(40)),
          filled: true,
          fillColor: Colors.grey.shade200,
          suffixIcon: IconButton(
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off, color: Colors.black,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
        ),
      );
  }
}
