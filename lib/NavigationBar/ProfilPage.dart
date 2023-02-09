import 'package:eppa/Boglanish.dart';
import 'package:eppa/NavigationBar/ButtonNavigationBar.dart';
import 'package:eppa/class.dart';
import 'package:flutter/material.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 241, 241),
        elevation: 0,
        leading: Icon(
          Icons.person_outlined,
          color: Colors.black,
        ),
        title: Container(
          child: Row(
            children: [
              Text(
                usernames.name,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                usernames.username,
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ],
          ),
        ),
        actions: [
          SizedBox(
            height: 5,
          ),
          Column(
            children: [
              Text(
                "ID 12345678",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
              ),
              Text(
                usernames.userfoune,
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 690,
          color: Color.fromARGB(255, 245, 241, 241),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 64,
              ),
              Container(
                width: 328,
                height: 181,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 32,
                    ),
                    Text(
                      "Mening ballarim",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                        width: 167,
                        height: 57,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/balls.png")))),
                  ],
                ),
              ),
              SizedBox(
                height: 48,
              ),
              Container(
                width: 328,
                height: 58,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonNavigationBar(1)));
                    },
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icon.png")),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Xarid Koshish",
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 328,
                height: 58,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonNavigationBar(2)));
                    },
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icon1.png")),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Amaliyotlar tarixi",
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                width: 328,
                height: 58,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonNavigationBar(3)));
                    },
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Container(
                          width: 26,
                          height: 26,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/icon2.png")),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Katalog",
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 80,
              ),
              Container(
                  width: 328,
                  height: 58,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoglanishPage()));
                      },
                      child: Text("Biz bilan bog’lanish")))
            ],
          ),
        ),
      ),
    );
  }
}
