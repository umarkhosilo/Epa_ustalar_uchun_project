import 'package:flutter/material.dart';

class AmaliyotTarihi1 extends StatefulWidget {

  @override
  State<AmaliyotTarihi1> createState() => _AmaliyotTarihi1State();
}

class _AmaliyotTarihi1State extends State<AmaliyotTarihi1> {
  String _text = "O345-41M52502";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink,
      body: Container(
      alignment: Alignment.center,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8)
        ),
        width: 358,
        height: 102,
        child: Row(children: [
          Container(
            decoration: BoxDecoration(
                color:  Colors.red, borderRadius: BorderRadius.circular(8)),
            margin: EdgeInsets.symmetric(horizontal: 8),
            width: 55,
            height: 55,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            width: 170,
            height: 82,
            child: Column(
              children: [
                Container(
                    child: Text(
                  "O345-41M52502",
                  style: TextStyle(color: Colors.black, fontSize: 14),
                )),
                Row(
                  children: [
                    SizedBox(height: 34,),
                    Container(
                      decoration: BoxDecoration(
                        
                      ),
                        margin: EdgeInsets.symmetric(horizontal: 8),
                        child: Text(
                          "17-bal beriladi",
                          style: TextStyle(fontSize: 10, color: Colors.black),
                        )),
                     ],
                )
              ],
            ),
          ),

         Column(
           children: [
            SizedBox(height: 10,width: 117,),
            
             Container(width: 40,height: 30,child: Text("550",style: TextStyle(fontSize: 15,color: Colors.black),),),
             Container(width: 52,height: 50,child: Text("balga olish mumkun",style: TextStyle(fontSize: 10,color: Colors.black),),),
           ],
         )

        ]),
      )),
    );
  }
}