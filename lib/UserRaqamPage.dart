import 'package:eppa/StartPage2.dart';
import 'package:eppa/UserRaqamHa.dart';
import 'package:eppa/UserRaqamYok.dart';
import 'package:eppa/class.dart';
import 'package:flutter/material.dart';

class UserRaqamPage extends StatefulWidget {
  const UserRaqamPage({Key? key}) : super(key: key);

  @override
  State<UserRaqamPage> createState() => _UserRaqamPageState();
}

class _UserRaqamPageState extends State<UserRaqamPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          color: Colors.black,
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> StartPage2()));
            },
            icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(usernames.userfoune,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontWeight: FontWeight.w700)),
                      SizedBox(height: 12,),
                      Text("Ushbu raqam siznikimi?",style: TextStyle(),),
                      SizedBox(height: 16,),
                      Container(width: 328,height: 54, child: ElevatedButton( style:
                      ElevatedButton.styleFrom(primary: Colors.red), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> UserRaqamHaPage()));}, child: Text("Ha"))),
                      SizedBox(height: 16,),
                        Container(width: 328,height: 54, child: ElevatedButton( style:
                      ElevatedButton.styleFrom(primary: Colors.red), onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> UserRaqamYpkPage()));}, child: Text("Yo'q"))),
 
           
            ],
          ),
      ),
      
    );
  }
}
