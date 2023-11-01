import 'package:flutter/material.dart';

class MyChatpage extends StatefulWidget {
  const MyChatpage({super.key});

  @override
  State<MyChatpage> createState() => _MyChatpageState();
}

class _MyChatpageState extends State<MyChatpage> {

  List <Map<String, dynamic>> listName =[
    {'name': 'Vikesh','subtitle': 'Call me back ?','imgUrl' : 'assets/images/boy1.jpeg','colors' : Colors.orange, 'date': '11:21 am','ureadmsg': '2',},
    {'name': 'Rajesh Sheoran', 'subtitle': 'How r u ?', 'imgUrl' : "assets/images/boy2.png", 'colors' : Colors.red, 'date': '12:22 pm', 'ureadmsg': '1',},
    {'name': 'Geeta kumari', 'subtitle': 'rajesh is there ?', 'imgUrl' : "assets/images/girl 2.png", 'colors' : Colors.yellow, 'date': '01:33 am', 'ureadmsg': '5', },
    {'name': 'Rajiv kumar', 'subtitle': 'aaj to koni bane ', 'imgUrl' : "assets/images/girl1.png", 'colors' : Colors.green, 'date': '01:33 am', 'ureadmsg': '2', },
    {'name': 'Pawan Singh', 'subtitle': 'aaja thanda piyenge ', 'imgUrl' : "assets/images/girl 2.png", 'colors' : Colors.pink, 'date': '01:33 am', 'ureadmsg': '2', },
    {'name': 'Ramesh kumar','subtitle': 'Call me back ?','imgUrl' : 'assets/images/boy1.jpeg','colors' : Colors.orange, 'date': '11:21 am','ureadmsg': '2',},
    {'name': 'Rajender sharma', 'subtitle': 'How r u ?', 'imgUrl' : "assets/images/girl3.png", 'colors' : Colors.red, 'date': '12:22 pm', 'ureadmsg': '0',},
    {'name': 'Gindodi kumari', 'subtitle': 'rajesh is there ?', 'imgUrl' : "assets/images/girl 2.png", 'colors' : Colors.yellow, 'date': '01:33 am', 'ureadmsg': '5', },
    {'name': 'Raj kumar', 'subtitle': 'aaj to koni bane ', 'imgUrl' : "assets/images/boy2.png", 'colors' : Colors.green, 'date': '01:33 am', 'ureadmsg': '2', },
    {'name': 'kavita Singh', 'subtitle': 'aaja thanda piyenge ', 'imgUrl' : "assets/images/girl3.png", 'colors' : Colors.pink, 'date': '01:33 am', 'ureadmsg': '2', },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: listName.length,
          itemBuilder: (_, index){
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage(listName[index]["imgUrl"]),
            backgroundColor: listName[index]["colors"],
          ),
          //Image.asset( "assets/images/girl3.png"),
          title: Text(listName[index]["name"]),
          subtitle: Text(listName[index]["subtitle"]),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(listName[index]["date"],style: TextStyle(
                color: Colors.green,
                fontSize: 10
              ),),
              SizedBox(height: 5,),
              //listName[index]["ureadmsg"] == "0" ? Container() :
              Container(
                width: 15,
                height: 15,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
                child:
                Center(
                   child:
                    Text((listName[index]["ureadmsg"]),style: TextStyle(
                    fontSize: 10,
                     color: Colors.white,
                  ),),
                ),
              )
            ],
          ),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.green,
        child: Icon(Icons.add_card_sharp,),
       ),
    );
  }
}
