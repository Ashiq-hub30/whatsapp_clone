import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_clone/callscreen.dart';
import 'package:whatsapp_clone/chattile.dart';
import 'package:whatsapp_clone/seprator.dart';
import 'package:whatsapp_clone/statusscreen.dart';
import 'package:whatsapp_clone/whatsapptab.dart';
import 'whatsappdata.dart';

Data data = Data();

class Chatscreen extends StatelessWidget {
  const Chatscreen({super.key});
  static const String id = 'chatscreen';

  int? get index => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff075e54),
        title: Text(
          'whatsapp',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                size: 28,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 26,
              ))
        ],
        bottom: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xff075e54),
          leading: Container(
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white.withOpacity(0.5),
              size: 28,
            ),
          ),
          actions: [
            WhatsappTabs(
              label: 'CHATS',
              fn: () => Navigator.pushNamed(context, Chatscreen.id),
            ),
            WhatsappTabs(
              label: 'STATUS',
              fn: () => Navigator.pushNamed(context, StatusScreen.id),
            ),
            WhatsappTabs(
              label: 'CALLS',
              fn: () => Navigator.pushNamed(context, CallScren.id),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        width: 70,
        height: 70,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {},
            child: Icon(Icons.message),
            backgroundColor: Color(0xff075e54),
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ChatTile(
                name: data.chat.values.elementAt(index).elementAt(0),
                msg: data.chat.values.elementAt(index).elementAt(1),
                time: data.chat.values.elementAt(index).elementAt(2),
                img: data.chat.values.elementAt(index).elementAt(3),
              ),
          separatorBuilder: (context, indext) => seprator(),
          itemCount: data.chat.length),
    );
  }
}








// void main() {
//   runApp(HomePage());
// }

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: ChatListScreen(),
//     );
//   }
// }

// class ChatListScreen extends StatelessWidget {
//   final List<Chat> chatList = [
//     Chat(
//       name: 'Anfas',
//       message: 'Hello, how are you?',
//       time: '12:30 PM',
//     ),
//     // Add more chat items here
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WhatsApp'),
//         backgroundColor: Colors.green,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.search),
//             onPressed: () {
//               // Implement search functionality here
//             },
//           ),
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             onPressed: () {
//               // Implement more options here
//             },
//           ),
//         ],
//       ),
//       body: ListView.builder(
//         itemCount: chatList.length,
//         itemBuilder: (context, index) {
//           final chat = chatList[index];
//           return ChatListItem(
//             name: chat.name,
//             message: chat.message,
//             time: chat.time,
//             onTap: () {
//               // Implement chat opening functionality here
//             },
//           );
//         },
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           // Implement new chat creation functionality here
//         },
//         child: Icon(Icons.chat),
//       ),
//     );
//   }
// }

// class Chat {
//   final String name;
//   final String message;
//   final String time;

//   Chat({required this.name, required this.message, required this.time});
// }

// class ChatListItem extends StatelessWidget {
//   final String name;
//   final String message;
//   final String time;
//   final VoidCallback onTap;

//   ChatListItem({
//     required this.name,
//     required this.message,
//     required this.time,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: CircleAvatar(),
//       title: Text(name),
//       subtitle: Text(message),
//       trailing: Text(time),
//       onTap: onTap,
//     );
//   }
// }





// // import 'package:flutter/material.dart';

// // class HomePage extends StatelessWidget {
// //   const HomePage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text("whatsapp"),
// //         backgroundColor: Colors.green,
// //       ),
// //       backgroundColor: Colors.white,
// //     );
// //   }
// // }
