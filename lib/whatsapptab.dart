import 'package:flutter/material.dart';

// ignore: must_be_immutable
class WhatsappTabs extends StatelessWidget {
  String label;
  final Function fn;
  WhatsappTabs({super.key, required this.fn, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 115,
      decoration: BoxDecoration(
        border: Border(
            bottom: BorderSide(
                color: label == 'CHATS' ? Colors.white : Colors.transparent,
                width: 5)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.all(
              8,
            ),
            child: GestureDetector(
              onTap: () {
                fn;
              },
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 18,
                    color: label == 'CHATS' ? Colors.white : Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
