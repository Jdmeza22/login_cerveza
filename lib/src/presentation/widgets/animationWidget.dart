
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class AnimationWidget extends StatelessWidget {
  const AnimationWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size * 0.6,
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Lottie.asset('assets/animations/cheers.json'),
            ),
            const Text('brew' ,style: TextStyle(fontWeight: FontWeight.bold , fontSize: 50 )),
            const Text('H E A V E N' ,style: TextStyle(fontWeight: FontWeight.w200 , fontSize: 25 ))
        ],
      )

    );
  }
}