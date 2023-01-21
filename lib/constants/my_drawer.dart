import 'package:eyefit/constants/constants.dart';
import 'package:eyefit/screens/eye_mission.dart';
import 'package:eyefit/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../screens/eye_test.dart';
import '../screens/meditation_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: HexColor("#27048f"),
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                HexColor("#3a00e6"),
                HexColor("#200080"),
              ]),
            ),
            padding: const EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  HexColor("#3a00e6"),
                  HexColor("#200080"),
                ]),
              ),
              accountName: Text('Armaan'),
              accountEmail: Text('armaan33000@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1474533410427-a23da4fd49d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGV5ZXMlMjByaWdodCUyMGFuZCUyMGxlZnR8ZW58MHx8MHx8&auto=format&fit=crop&w=600&q=60',
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              moveScreen(context, true, HomeScreen());
            },
            child: ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                'Home',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            thickness: 0.6,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              moveScreen(context, false, EyeMissionScreen());
            },
            child: ListTile(
              leading: Icon(
                Icons.center_focus_strong_outlined,
                color: Colors.white,
              ),
              title: Text(
                'Eyes Misson',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            thickness: 0.6,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              moveScreen(context, false, MeditationScreen());
            },
            child: ListTile(
              leading: Icon(
                Icons.remove_red_eye_rounded,
                color: Colors.white,
              ),
              title: Text(
                'Meditation time',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            thickness: 0.6,
            color: Colors.white,
          ),
          InkWell(
            onTap: () {
              moveScreen(context, false, EyeTestScreen());
            },
            child: ListTile(
              leading: Icon(
                Icons.newspaper,
                color: Colors.white,
              ),
              title: Text(
                'Eye Test',
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ),
          Divider(
            height: 0.5,
            thickness: 0.6,
            color: Colors.white,
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'My Profile',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w200,
              ),
            ),
          ),
          Divider(
            height: 0.5,
            thickness: 0.6,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
