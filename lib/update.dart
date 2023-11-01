import 'package:flutter/material.dart';

class Myupdatepage extends StatefulWidget {
  const Myupdatepage({super.key});

  @override
  State<Myupdatepage> createState() => _MyupdatepageState();
}

class _MyupdatepageState extends State<Myupdatepage> {
  List <Map<String, dynamic>> listName =[
    {'name': 'Vikesh','subtitle': '3 minutes ago','imgUrl' : 'assets/images/boy1.png','colors' : Colors.orange, 'date': '11:21 am','ureadmsg': "2",},
    {'name': 'Rajesh Sheoran', 'subtitle': '3 minutes ago', 'imgUrl' : "girl3.png", 'colors' : Colors.red, 'date': '12:22 pm', 'ureadmsg': "1",},
    {'name': 'Geeta kumari', 'subtitle': '3 minutes ago', 'imgUrl' : "assets/images/girl 2.png", 'colors' : Colors.yellow, 'date': '01:33 am', 'ureadmsg': "5", },
    {'name': 'Rajiv kumar', 'subtitle': '3 minutes ago', 'imgUrl' : "assets/girl3.png", 'colors' : Colors.green, 'date': '01:33 am', 'ureadmsg': "2", },
    {'name': 'Pawan Singh', 'subtitle': '3 minutes ago ', 'imgUrl' : "assets/girl3.png", 'colors' : Colors.pink, 'date': '01:33 am', 'ureadmsg': "2", },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(19.0),
            child: Container(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("Status", style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Stack(
                          children:[
                            CircleAvatar(),
                            Positioned(
                                top: 15,
                                left: 15,
                                child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.green,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Icon(Icons.add,color: Colors.white,))),
                          ], ),
                      SizedBox(width: 10,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Status"),
                          Text("Tap To Add Status"),
                        ],
                      ),

                    ],
                  ),
                  SizedBox(height: 20,),
                  Align(
                    alignment: Alignment.topLeft,
                      child: Text("Recent Updates"))

                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: listName.length,
                itemBuilder: (_, index){
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(listName[index]['imgUrl']),
                      backgroundColor: listName[index]['colors'],
                      radius: 20,
                    ),
                    title: Text(listName[index]["name"]),
                    subtitle: Text(listName[index]["subtitle"]),

                  );
                }),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
        },
        child: Icon(Icons.add_a_photo_rounded),
        
      ),




    );
  }
}