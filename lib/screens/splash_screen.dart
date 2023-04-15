import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
   int? duration = 0;
  Widget nextPage;
  SplashScreen({
    Key? key,
    this.duration,
    required this.nextPage,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration!), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => nextPage),
      );
    });
   return Scaffold(
      backgroundColor: const Color.fromARGB(255, 177, 234, 181),
      body: Center(
        child: ClipOval(
          child: Container(
            width: 180,
            height: 180,
            // color: Color.fromARGB(255, 237, 211, 210),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/Logo.jpeg'),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
      ),
    );
  }
}
