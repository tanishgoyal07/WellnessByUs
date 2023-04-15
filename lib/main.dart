import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:indu_wellness/languages/localestring.dart';
import 'package:indu_wellness/screens/landing_page.dart';
import 'package:indu_wellness/screens/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Indu",
      debugShowCheckedModeBanner: false,
      translations: LocaleString(),
      locale: const Locale('en', 'US'),
      home: SplashScreen(
        duration: 2,
        nextPage: const LandingPage(),
      ),
      // home: const SplashScreen(),
      theme: ThemeData(fontFamily: 'OpenSans', primaryColor: Colors.green[300]),
    );
  }
}
