import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class settingPage extends StatefulWidget {
  const settingPage({Key? key}) : super(key: key);

  @override
  State<settingPage> createState() => _settingPage();
}

class _settingPage extends State<settingPage> {
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const ScrollPhysics(),
        child: Container(
          margin:
          const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    child: Text(
                      '' + user.email! + '  ',
                      style: GoogleFonts.roboto(
                        fontSize: 15,
                        color: Color(0xffa9a4a5),
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.grey)),
                    child: GestureDetector(
                      onTap: () {
                        FirebaseAuth.instance.signOut();
                      },
                      child: Icon(
                        Icons.logout,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                ],
              ),
              Image.asset(
                'lib/images/splash_image.gif',
                width: 450,
                height: 150,
              ),
              Text(
                'Rent A Car',
                style: GoogleFonts.arvo(
                  fontSize: 51,
                  fontWeight: FontWeight.w900,
                  color: Colors.black,
                ),
              ),
              Text(
                'Your Car Service Provider\n that helps you to make easy\n access on booking car',
                style: GoogleFonts.cabin(
                  fontSize: 20,
                  color: Color(0xffa9a4a5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
