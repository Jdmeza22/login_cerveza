import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final Color color;
  final Color textColor;
  final Function()? onTap;
  const ButtonWidget({
    super.key, required this.text, required this.color, required this.textColor, this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: SizedBox(
        height: 60,
        width: 150,
        child: ElevatedButton(onPressed: onTap, 
          style:  ButtonStyle(backgroundColor:  MaterialStatePropertyAll(color), 
              shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius : BorderRadius.circular(50)))) ,
          child: Text(text, style:  TextStyle(color: textColor, fontSize: 18, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
