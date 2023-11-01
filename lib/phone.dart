import 'package:flutter/material.dart';

class Myphonepage extends StatefulWidget {
  const Myphonepage({super.key});

  @override
  State<Myphonepage> createState() => _MyphonepageState();
}

class _MyphonepageState extends State<Myphonepage> {

  List <Map<String, dynamic>> listName =[
    {'name': 'Vikesh','subtitle': 'Today, 12:18 PM','imgUrl' : 'assets/images/boy1.png','colors' : Colors.orange, 'logo': Icons.video_call,},
    {'name': 'Rajesh Sheoran', 'subtitle': 'Today, 1:18 PM', 'imgUrl' : "girl3.png", 'colors' : Colors.red, 'logo': Icons.phone, },
    {'name': 'Geeta kumari', 'subtitle': 'Today, 3:18 PM', 'imgUrl' : "assets/images/girl 2.png", 'colors' : Colors.yellow, 'logo': Icons.video_call,  },
    {'name': 'Rajiv kumar', 'subtitle': 'Today, 10:18 PM', 'imgUrl' : "assets/girl3.png", 'colors' : Colors.green, 'logo': Icons.phone,  },
    {'name': 'Pawan Singh', 'subtitle': 'Today, 2:18 PM', 'imgUrl' : "assets/girl3.png", 'colors' : Colors.pink, 'logo': Icons.phone,  },
    {'name': 'Ramesh kumar','subtitle': 'Today, 4:18 PM','imgUrl' : 'assets/images/boy1.png','colors' : Colors.orange, 'logo': Icons.video_call, },
    {'name': 'Rajender sharma', 'subtitle': 'Today, 09:18 PM', 'imgUrl' : "girl3.png", 'colors' : Colors.red, 'logo': Icons.video_call, },
    {'name': 'Gindodi kumari', 'subtitle': 'Today, 05:18 PM', 'imgUrl' : "assets/images/girl 2.png", 'colors' : Colors.yellow, 'logo': Icons.phone,  },
    {'name': 'Raj kumar', 'subtitle': 'Today, 12:18 PM', 'imgUrl' : "assets/girl3.png", 'colors' : Colors.green, 'logo': Icons.video_call,  },
    {'name': 'kavita Singh', 'subtitle': 'Today, 10:18 PM', 'imgUrl' : "assets/girl3.png", 'colors' : Colors.pink, 'logo': Icons.phone,  },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(

          children: [
            Container(
              child: Row(
                children: [
                  CircleAvatar(
                    child: Icon(Icons.link,),
                  ),
                  SizedBox(width: 5,),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Create Call link"),
                        Text("Share a link for your WhatsApp call"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Align(
                alignment: Alignment.topLeft,
                child: Text("Recent")),
            SizedBox(height: 10,),
            Expanded(
              child: ListView.builder(
                  itemCount: listName.length,
                  itemBuilder: (_,index){
                    return ListTile(
                      leading: CircleAvatar(
                        backgroundColor: listName[index]['colors'],
                      ),
                      title: Text(listName[index]["name"]),
                      subtitle: Text(listName[index]["subtitle"]),
                      trailing: Icon(listName[index]["logo"],color: Colors.green,),
                    );
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {},
        child: Icon(Icons.phone_in_talk,color: Colors.black,),
      ),
    );
  }
}
