import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../constants/my_drawer.dart';

class BlinkingExercise extends StatefulWidget {
  const BlinkingExercise({Key? key}) : super(key: key);

  @override
  State<BlinkingExercise> createState() => _BlinkingExerciseState();
}

class _BlinkingExerciseState extends State<BlinkingExercise> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text('EyeFit'),
        centerTitle: true,
        backgroundColor: HexColor("#14004f"),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            height: size.height * 0.9,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  HexColor(
                    "#27007a",
                  ),
                  HexColor("#c2a7fc"),
                ],
              ),
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: NetworkImage(
                            'https://png.pngtree.com/png-clipart/20210214/ourlarge/pngtree-open-cartoon-eyes-clipart-black-and-white-png-image_2921132.jpg'),
                        height: 120,
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image(
                        image: NetworkImage(
                            'https://media.istockphoto.com/id/1208436411/vector/abstract-closed-eyes-with-lashes.jpg?s=612x612&w=0&k=20&c=sh2DtNhz2GBCoS10F8HbB92Lisv-lVeySp2jixziw_I='),
                        height: 120,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'Blink your eyes rapidly',
                    style:
                        GoogleFonts.poppins(color: Colors.white, fontSize: 22),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 18.0),
                  child: Center(
                    child: Text(
                      'You need to blink your eyes for total of 180 seconds (3 minutes) relax temporarily and do daily for 3 mins',
                      style: GoogleFonts.poppins(
                          color: Colors.grey[200], fontSize: 14),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
