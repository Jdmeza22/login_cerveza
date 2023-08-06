import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  const ButtonWidget({
    super.key, required this.text, required this.color, required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 150,
      child: ElevatedButton(onPressed: (){}, 
        style:  ButtonStyle(backgroundColor:  MaterialStatePropertyAll(color), 
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius : BorderRadius.circular(50)))) ,
        child: Text(text, style:  TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold))),
    );
  }
}
