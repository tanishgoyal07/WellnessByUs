import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:indu_wellness/constants.dart';
import 'package:indu_wellness/screens/bottom_bar.dart';
import 'package:indu_wellness/screens/home_page.dart';
import 'package:indu_wellness/utils/custom_button.dart';

String? displayName = "Guest";
String? userUid = "";

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/bg4.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipRRect(
                      child: Container(
                        width: 180,
                        height: 180,
                        // color: Color.fromARGB(255, 237, 211, 210),
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                          // color: Color.fromARGB(255, 255, 255, 255),
                          image: DecorationImage(
                            image: AssetImage('assets/indu.png'),
                            fit: BoxFit.fill,
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                  const Text('Indu - मेरी सखी',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(height: 40),
                  CustomButton(
                    label: 'Login With Google',
                    onClick: () {
                      signInWithGoogle();
                    },
                  ),
                  CustomButton(
                    label: 'Continue As Guest',
                    onClick: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => BottomBar(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication googleAuth =
        await googleUser!.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);
    userUid = userCredential.user?.uid; //to store user Id
    displayName = userCredential.user?.displayName; // to store user name
    print(displayName);
    print(userUid);
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => BottomBar(),
      ),
    );
  }
}
