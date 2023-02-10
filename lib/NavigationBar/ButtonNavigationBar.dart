import 'package:eppa/NavigationBar/AmaliyotTarihi.dart';
import 'package:eppa/Repasitory/katalog/Katalog.dart';
import 'package:eppa/NavigationBar/ProfilPage.dart';
import 'package:eppa/NavigationBar/XaridQoshish.dart';
import 'package:flutter/material.dart';

class ButtonNavigationBar extends StatefulWidget {
  int index;
  ButtonNavigationBar(this.index, {Key? key}) : super(key: key);

  @override
  State<ButtonNavigationBar> createState() => _ButtonNavigationBarState();
}

class _ButtonNavigationBarState extends State<ButtonNavigationBar> {
  List? pages;
  @override
  void initState() {
    // TODO: implement initState
    pages = [ProfilPage(), XariQoshishPage(), TapbarPage(), Katalog()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ortga",
          style: TextStyle(color: Color.fromARGB(255, 71, 68, 68)),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        backgroundColor: Color.fromARGB(255, 240, 233, 233),
        elevation: 0,
      ),
      body: pages![widget.index],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (e) {
          setState(() {
            widget.index = e;
            if (widget.index == 0) {
              Navigator.pop(context);
            }
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: widget.index,
        elevation: 10,
        selectedFontSize: 30,
        iconSize: 30,
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                child: Image(image: AssetImage("assets/images/home.png")),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                child: Image(image: AssetImage("assets/images/add.png")),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                child: Image(image: AssetImage("assets/images/sup.png")),
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Container(
                child: Image(image: AssetImage("assets/images/katalog.png")),
              ),
              label: ""),
        ],
      ),
    );
  }
}
