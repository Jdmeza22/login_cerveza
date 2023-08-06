
import 'package:flutter/material.dart';
import 'package:login_cerveza/src/presentation/widgets/bodyWidget.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: BodyWidget(),
    );
  }
}

