
import 'dart:async';

import 'package:car_market/screens/carpage.dart';
import 'package:car_market/screens/home_button.dart';
import 'package:car_market/screens/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/main_page.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MainPage(),
      routes: {
        '/homepage': (context) => HomeButtonPage(),
        '/carpage': (context) => CarPage(),
      },
    );
  }
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 4), () {
      print('reached');
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage(showRegisterPage: () {  },)));
    });

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(1),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Container(
                alignment: Alignment.center,
                width: MediaQuery.of(context).size.width * 1,
                child: Image.asset('lib/images/splash_image.gif'),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              child: Text(
                'CAR \"N\" GO',
                style: TextStyle(
                    fontFamily: 'Ceviche',
                    color: Colors.blueAccent,
                    fontSize: MediaQuery.of(context).size.aspectRatio * 150,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }
}

