import 'package:flutter/material.dart';
import 'package:login_cerveza/src/presentation/screens/login_screen.dart';
import 'package:login_cerveza/src/presentation/widgets/buttonWidget.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
    required this.size,
  });

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 60),
      height: size * 0.4,
      width: double.infinity,
      decoration:  const BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        )
      ),
      child:   Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Welcome',style: TextStyle(fontSize: 35 , fontWeight: FontWeight.w800),),
          const SizedBox( height: 10),
          const Text('Esse incididunt officia officia incididunt nulla culpa ullamco labore id sunt in.',
            style:TextStyle(fontSize: 20 , fontWeight: FontWeight.w400)),
          const SizedBox(height: 15),
          Row(
            children: [
              ButtonWidget(
                text :'Sign In', 
                color : Colors.black ,
                textColor: Colors.white,
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  Navigator.pushNamed(context, '/login');
                }),
              const SizedBox(width: 25,),
              ButtonWidget(
                text :'Sign Up',
                color : Colors.white ,
                textColor : Colors.black ,
                onTap: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  Navigator.pushNamed(context, '/register');
                })
            ],
          ) 
        ],
      ),
    );
  }
}

