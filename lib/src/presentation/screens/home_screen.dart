import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeWidget();
  }
}

class HomeWidget extends StatefulWidget {
  const HomeWidget({
    super.key,
  });

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late AnimationController _topCircleController;
  late AnimationController _bottomCircleController;

  @override
  void initState() {
    super.initState();

    _topCircleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);

    _bottomCircleController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _topCircleController.dispose();
    _bottomCircleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.white, // Background color
        ),
        Center(
          child: Lottie.asset('assets/animations/homeBeer.json'),
        ),
        AnimatedBuilder(
          animation: _topCircleController,
          builder: (context, child) {
            return Positioned(
              top: _topCircleController.value * 30 - 30,
              right: -50,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        ),
        AnimatedBuilder(
          animation: _bottomCircleController,
          builder: (context, child) {
            return Positioned(
              bottom: _bottomCircleController.value * 70 - 70,
              left: -50,
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle,
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
