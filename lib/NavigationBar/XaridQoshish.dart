import 'package:flutter/material.dart';

class XariQoshishPage extends StatefulWidget {
  @override
  State<XariQoshishPage> createState() => _XariQoshishPageState();
}

class _XariQoshishPageState extends State<XariQoshishPage> {
  Color butooncolor = Colors.grey;
  Color _color = Colors.grey;
  String _text = '';
  TextEditingController? _controller;
  @override
  void initState() {
    _controller = TextEditingController();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 240, 233, 233),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Yangi xarid",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w800)),
            SizedBox(
              height: 32,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    child: Text(
                  "Mahsulot qadogidagi kodni kiriting:",
                  style: TextStyle(color: Colors.black),
                )),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 358,
                  height: 60,
                  child: TextFormField(
                    cursorColor: Colors.black,
                    cursorWidth: 1,
                    onTap: () {
                      butooncolor = Colors.green;
                      setState(() {});
                    },
                    onChanged: (e) {
                      _text = e;
                      if (_text.length > 3) {
                        _color = Colors.red;
                      } else {
                        _color = Colors.grey;
                      }
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.green, width: 3)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                width: 358,
                height: 60,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: _color),
                    onPressed: () {},
                    child: Text(
                      "Qosh'ish",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )))
          ],
        ),
      ),
    );
  }
}
