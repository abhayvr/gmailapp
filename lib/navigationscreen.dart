import 'package:flutter/material.dart';

class navscreen extends StatefulWidget {
  const navscreen({super.key});

  @override
  State<navscreen> createState() => _navscreenState();
}

class _navscreenState extends State<navscreen> {
  List users = [
    {"name": "TCS", "image": "T"},
    {"name": "WIPRO", "image": "W"},
    {"name": "IBM", "image": "I"},
    {"name": "CYBERPARK", "image": "C"},
    {"name": "INFOPARK", "image": "N"},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("${users[index]["name"]}"),
                leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text("${users[index]["image"]}"),
                  radius: 25,
                ),
              );
            }),
      ),
    );
  }
}
