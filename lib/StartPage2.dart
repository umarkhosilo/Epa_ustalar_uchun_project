import 'libruaryclass.dart';

class StartPage2 extends StatefulWidget {
  const StartPage2({Key? key}) : super(key: key);

  @override
  State<StartPage2> createState() => _StartPage2State();
}

class _StartPage2State extends State<StartPage2> {
  TextEditingController _userkarta = TextEditingController();
  String KartaRaqami = usernames.userkarta;
  bool _enable = false;
  String? _usserkarta;
  Color inputcolor = Colors.grey;
  dynamic colobutton = Colors.grey;
  bool colbuttononclick = false;
  String _e = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 229, 229, 1),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 233, 230, 230),
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(height: 90.h),
            Container(
              alignment: Alignment.center,
              width: 328.w,
              height: 35.h,
              child: Text(
                "Xush kelibsiz!",
                style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 32.h),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Karta raqamingizni kiriting:",
                      style: TextStyle(color: Colors.grey),
                    )),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
                width: 328.w,
                height: 56.h,
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: TextFormField(
                  onChanged: (e) {
                    _e = e;
                    if (_e.length > 7) {
                      colobutton = Colors.red;
                    } else {
                      colobutton = Colors.grey;
                    }
                    setState(() {});
                  },
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              BorderSide(color: Colors.green, width: 3.w)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2.w)),
                      border: InputBorder.none,
                    ),
                  keyboardType: TextInputType.number,
                  controller: _userkarta,
                )),
            SizedBox(height: 32.h),
            Container(
                width: 330.w,
                height: 58.h,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: colobutton),
                  onPressed: () {
                    if (_userkarta.text == usernames.userkarta) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserRaqamPage()));
                    }
                  },
                  child: Text(
                    "Aktivlashtirish kodini olish",
                    style: TextStyle(color: Colors.white),
                  ),
                )),
            SizedBox(height: 262.h),
            Container(
                width: 330.w,
                height: 58.h,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => Registraciya())));
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.deepOrange),
                    child: Text("Karta raqamim yo'q"))),
            SizedBox(
              height: 48.h,
            )
          ]),
        ),
      ),
    );
  }
}
