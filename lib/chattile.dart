import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String msg;
  final String time;
  final String img;

  ChatTile({
    required this.name,
    required this.msg,
    required this.time,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Padding(
        padding: const EdgeInsets.only(right: 8.0),
        child: CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage(img),
        ),
      ),
      title: Text(name),
      subtitle: Text(msg),
      trailing: Text(time),
    );
  }
}
