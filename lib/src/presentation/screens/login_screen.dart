import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( backgroundColor: Colors.amber ,
      elevation: 0,
      leading: IconButton(onPressed: () {
        Navigator.pop(context);
      },
        icon: const Icon(Icons.arrow_back_rounded ,size: 35,),  
        color: Colors.black),
          actions: [
            TextButton(onPressed: () {
              Navigator.pushNamed(context, '/register');
              }, style: TextButton.styleFrom(
                foregroundColor: Colors.black 
              ), child: const Text('Register')) 
          ]),
              backgroundColor: Colors.amber,
          
      );
  }
}