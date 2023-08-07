import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return homeWidget();
  }
}

class homeWidget extends StatelessWidget {
  const homeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Lottie.asset('assets/animations/homeBeer.json')
      ),
      
    );
  }
}