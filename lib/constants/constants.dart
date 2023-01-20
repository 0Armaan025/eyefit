//function to move to screens

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void moveScreen(BuildContext context, bool isPushReplacement, Widget screen) {
  if (isPushReplacement) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  } else {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }
}
