import 'package:eppa/StartPage.dart';
import 'package:flutter/material.dart';
import 'Registr.dart';

class Post extends StatefulWidget {
  const Post({Key? key}) : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  TextEditingController? phonecontrol;
  TextEditingController? full_namecontrol;

  @override
  void initState() {
    phonecontrol = TextEditingController();
    full_namecontrol = TextEditingController();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tel:"),
            Container(
            
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: TextFormField(
                  controller: phonecontrol,
                  cursorWidth: 1,
                  decoration: InputDecoration(border: InputBorder.none),
                  
                  keyboardType: TextInputType.number,
                )),
            Text("name:"),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.grey)),
                child: TextFormField(
                  cursorWidth: 1,
                  decoration: InputDecoration(border: InputBorder.none),
                  controller: full_namecontrol,
                )),
            ElevatedButton(
                onPressed: () async {
                  var dataService = await RegistrationService().Registor(
                     phone: phonecontrol!.text,
                     full_name: full_namecontrol!.text
                     );

                  if (dataService['status']) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => StartPage()));
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(dataService["content"])));
                  } else {
                     ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(dataService["message"])));
                  }
                  setState(() {});
                },
                child: Text("Next"))
          ],
        ),
      ),
    );
  }
}
