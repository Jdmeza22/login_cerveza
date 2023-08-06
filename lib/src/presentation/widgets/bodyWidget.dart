import 'package:flutter/material.dart';
import 'package:login_cerveza/src/presentation/widgets/animationWidget.dart';
import 'package:login_cerveza/src/presentation/widgets/welcomeWidget.dart';



class BodyWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final  size = MediaQuery.of(context).size.height ;
    return Column(
      children: [
        AnimationWidget(size: size),
        WelcomeWidget(size: size)
      ],
    );
  }
}