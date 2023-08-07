
import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      width: double.infinity,
      height: 50,
      child: ElevatedButton(onPressed: (){},
      style:  ButtonStyle(backgroundColor:  MaterialStatePropertyAll(Colors.grey.shade200), 
         shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius : BorderRadius.circular(50)))), child: Row(
        children: [Image.network('https://i1.pnghost.com/24/10/2/pngdb-google-png-FbcbvJk6ehx0CYtq1pnxuxeCU.jpg' ,
          height: 35, width: 35,),
        const Spacer(),
        const Text('Continue with Google' , style: TextStyle(color: Colors.black),),
         const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_outlined ,color: Colors.black,))
        ],
      ) 
      ),
    );
  }
}