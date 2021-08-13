import 'package:flutter/material.dart';
import 'package:telegram_profile_ui_app/profile.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/profile',
    routes: {
      '/profile':(context)=>Profile(),
    },
  ));
}

