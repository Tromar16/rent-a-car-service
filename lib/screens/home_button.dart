import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:google_fonts/google_fonts.dart';

import '../pages/new_card.dart';




class HomeButtonPage extends StatefulWidget {
  @override
  State<HomeButtonPage> createState() => _HomeButtonPageState();
}

class _HomeButtonPageState extends State<HomeButtonPage> {
  final locates = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final arg = (ModalRoute.of(context)?.settings.arguments ??
        <dynamic, dynamic>{}) as Map;
    return SafeArea(
      child: Scaffold(

        resizeToAvoidBottomInset: false,
        body: Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 30, left: 10, right: 10),
              height: MediaQuery
                  .of(context)
                  .size
                  .height * 0.14,
              child: Center(
                child: Text(
                  'Rent A Car',

                  style: GoogleFonts.arvo(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,

                  ),

                )
              ),

            ),
            MyCard(
              modelname: arg['modelname'],
              price: arg['price'],
              type: arg['type'],
              mobilenumber: arg['mobilenumber'],
              seat: arg['seat'],
              vehiclenumber: arg['vehiclenumber'],
              location: arg['location'],
            ),
          ],
        ),
      ),
    );
  }

  void clear() {
    locates.clear();
  }


}
