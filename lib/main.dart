import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_firstapp/chat.dart';
import 'package:my_firstapp/phone.dart';
import 'package:my_firstapp/update.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatefulWidget {
  @override
  State<myApp> createState() => _myAppState();
}

class _myAppState extends State<myApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: myHomePage(),
    );
  }
}

class myHomePage extends StatefulWidget {
  @override
  State<myHomePage> createState() => _myHomePageState();
}

class _myHomePageState extends State<myHomePage> {
  List<Map<String, dynamic>> draweritems = [
    {
      "icon": Icons.chat,
      "title": "Chat",
    },
    {
      "icon": Icons.update,
      "title": "Update",
    },
    {
      "icon": Icons.call,
      "title": "Calls",
    },
    {
      "icon": Icons.logout,
      "title": "Log Out",
    },
  ];

  int currentindexpage = 0;


  List<Widget> pagelist = [
    MyChatpage(),
    Myupdatepage(),
    Myphonepage(),
    MyChatpage(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
              title: Text('Whatsapp'),
              //shadowColor: Colors.red,
              //centerTitle: true,
              bottom: TabBar(
                onTap: (index){
                  setState(() {
                    currentindexpage=index;
                  });
                },
                tabs: [
                  Tab(
                     child: Row(
                        children: [
                          Icon(Icons.call),
                          SizedBox(width: 10,),
                          Text("Chats"),
                        ],
                      )),
                  Tab(
                      child: Row(
                        children: [
                          Icon(Icons.update),
                          SizedBox(width: 10,),
                          Text("update"),
                        ],
                      )),
                  Tab(
                      child: Row(
                        children: [
                          Icon(Icons.phone),
                          SizedBox(width: 10,),
                          Text("Calls"),
                        ],
                      )),

                ],
              ),
              actions: [
                currentindexpage== 0 || currentindexpage== 2 ?
                  Row(
                      children: [
                      Icon(Icons.camera_alt_outlined),
                  SizedBox(width: 5,),
                  Icon(Icons.search),
                  SizedBox(width: 5,),
                  Icon(Icons.more_vert),])
                :
                    Row(
                    children:[
                    Icon(Icons.camera_alt_outlined),
                    SizedBox(width: 5,),
                    Icon(Icons.more_vert),]),
  ]

      ),
      body: TabBarView(
        children: [
          MyChatpage(),
          Myupdatepage(),
          Myphonepage(),

          //pagelist[currentindexpage],
        ],
      ),
      // drawer: Drawer(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 200,
      //         color: Colors.blue.shade200,
      //         child: Align(
      //           alignment: Alignment.bottomCenter,
      //           child: Padding(
      //             padding: const EdgeInsets.all(8.0),
      //             child: Row(
      //               children: [
      //                 CircleAvatar(),
      //                 SizedBox(width: 10),
      //                 SizedBox(
      //                   height: 40,
      //                   child: Column(
      //                     crossAxisAlignment: CrossAxisAlignment.start,
      //                     children: [
      //                       Text("vikesh"),
      //                       Text("vikeshsheoran@gmail.com"),
      //                     ],
      //                   ),
      //                 )
      //               ],
      //             ),
      //           ),
      //         ),
      //       ),
      //       Expanded(
      //         child: ListView.builder(
      //             itemCount: draweritems.length,
      //             itemBuilder: (_, index) {
      //               return InkWell(
      //                 onTap: () {
      //                   if (index == 3) {
      //                     ///do nothing
      //                   } else {
      //                     currentindexpage = index;
      //                     setState(() {});
      //                   }
      //                   Navigator.pop(context);
      //                 },
      //                 child: ListTile(
      //                   leading: Icon(draweritems[index]["icon"]),
      //                   title: Text(draweritems[index]["title"]),
      //                 ),
      //               );
      //             }),
      //       ),
      //     ],
      //   ),
      // ),
    ),);
  }
}
