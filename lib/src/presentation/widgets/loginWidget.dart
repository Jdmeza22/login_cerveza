import 'package:flutter/material.dart';
import 'package:login_cerveza/src/presentation/widgets/ButtonWidget.dart';
import 'package:login_cerveza/src/presentation/widgets/googleButtonWidget.dart';
import 'package:login_cerveza/src/presentation/widgets/inputPasswordWidget.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_rounded, size: 35,),
          color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home');
            },
            style: TextButton.styleFrom(
              foregroundColor: Colors.black,
            ),
            child: const Text(
              'Register',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Sign In',
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Officia aute magna excepteur ullamco commodo aute reprehenderit eiusmod duis commodo elit sint in velit.',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: size.height,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 10,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Form(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: 'Username',
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40), borderSide: BorderSide.none),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(40)),
                              filled: true,
                              fillColor: Colors.grey.shade200,
                            ),
                          ),
                          const SizedBox(height: 15),
                          const PasswordInput(),
                          const SizedBox(height: 5),
                          const InkWell(
                            child: Text('Forgot Password?', style: TextStyle(fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(height: 30),
                          Column(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: ButtonWidget(
                                  text: 'Sign In',
                                  color: Colors.black,
                                  textColor: Colors.white,
                                  onTap: () {
                                    // Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                                    // Navigator.pushNamed(context, '/login');
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const GoogleButton(),
                  const SizedBox(height: 30),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.grey.shade200),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(50))),
                      ),
                      child: Row(
                        children: [
                          Image.network(
                            'https://www.pngfind.com/pngs/m/594-5948011_icone-facebook-redondo-png-facebook-logo-hd-transparent.png',
                            height: 35,
                            width: 35,
                          ),
                          const Spacer(),
                          const Text(
                            'Continue with Facebook',
                            style: TextStyle(color: Colors.black),
                          ),
                          const Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_outlined, color: Colors.black,),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
