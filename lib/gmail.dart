import 'package:flutter/material.dart';

class gmailnav extends StatefulWidget {
  const gmailnav({super.key});

  @override
  State<gmailnav> createState() => _gmailnavState();
}

class _gmailnavState extends State<gmailnav> {

  @override var currentIndex = 0;
  late PageController pgc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pgc = PageController(initialPage: currentIndex);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [Container()],

      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(child: Text("Gmail")),
            ListTile(title: Text("All inboxes"),leading: Icon(Icons.inbox),),
            ListTile(title: Text("primary"),leading: Icon(Icons.stay_primary_landscape),),
            ListTile(title: Text("promotions"),leading: Icon(Icons.task_alt_rounded),),
            ListTile(title: Text("social"),leading: Icon(Icons.sensor_occupied),),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Gmail"),
      ),
    bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(icon: Icon(Icons.mail),label: ""),
    BottomNavigationBarItem(icon: Icon(Icons.video_call),label: ""),
    ],
       currentIndex: currentIndex,
       fixedColor: Colors.deepOrangeAccent,
       onTap: (index){
        currentIndex=index;
        pgc.jumpToPage(index);
        setState(() {

         });
       },
    ),


          controller :pgc,
          children: [ LoginPage(),mychatbuild()],
        )



    );
  }
}
