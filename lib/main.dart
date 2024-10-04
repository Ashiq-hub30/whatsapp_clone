import 'package:flutter/material.dart';
import 'package:whatsapp_clone/callscreen.dart';
import 'package:whatsapp_clone/chatscreen.dart';
import 'package:whatsapp_clone/statusscreen.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: Chatscreen.id,
      routes: {
        Chatscreen.id: (ctx) => Chatscreen(),
        StatusScreen.id: (ctx) => StatusScreen(),
        CallScren.id: (ctx) => CallScren(),
      },
      debugShowCheckedModeBanner: false,
    ),
  );
}
