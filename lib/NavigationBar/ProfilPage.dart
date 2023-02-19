import 'package:eppa/Boglanish.dart';
import 'package:eppa/NavigationBar/ButtonNavigationBar.dart';
import 'package:eppa/libruaryclass.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  bool _fromTop = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 245, 241, 241),
        elevation: 0,
        leading: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/profilicon.png"))),
        ),
        title: InkWell(
          onTap: () {
            openProfil();
          },
          child: Container(
            child: Row(
              children: [
                Container(
                  child: Text(
                    usernames.name,
                    style: TextStyle(
                        color: Color.fromRGBO(130, 130, 130, 1),
                        fontSize: 14.sp),
                  ),
                ),
                SizedBox(
                  width: 5.w,
                ),
                Text(
                  usernames.username,
                  style: TextStyle(
                      color: Color.fromRGBO(130, 130, 130, 1), fontSize: 14.sp),
                ),
              ],
            ),
          ),
        ),
        actions: [
          SizedBox(
            height: 5.h,
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
                style: TextStyle(
                  color: Color.fromRGBO(130, 130, 130, 1),
                ),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: Color.fromARGB(255, 245, 241, 241),
          alignment: Alignment.center,
          child: Column(
            children: [
              SizedBox(
                height: 64.h,
              ),
              Container(
                width: 328.w,
                height: 181.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(
                      "Mening ballarim",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 24),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Container(
                        width: 167.w,
                        height: 57.h,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/balls.png")))),
                  ],
                ),
              ),
              SizedBox(
                height: 48.h,
              ),
              Container(
                width: 328.w,
                height: 58.h,
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
                          width: 26.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/icon.png")),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Xarid Koshish",
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 328.w,
                height: 58.h,
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
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w)),
                        Container(
                          width: 26.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/icon1.png")),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Amaliyotlar tarixi",
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 16.h,
              ),
              Container(
                width: 328.w,
                height: 58.h,
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
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30.w)),
                        Container(
                          width: 26.w,
                          height: 26.h,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/icon2.png")),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Text(
                          "Katalog",
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: 50.h,
              ),
              Container(
                  width: 328.w,
                  height: 58.h,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BoglanishPage()));
                      },
                      child: Text("Biz bilan bog’lanish"))),
              SizedBox(
                height: 20.h,
              )
            ],
          ),
        ),
      ),
    );
  }

  openProfil() {
    showGeneralDialog(
      barrierLabel: "nsntshg",
      barrierDismissible: true,
      barrierColor: Colors.black45.withOpacity(.8),
      transitionDuration: Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        // StatefulBuilder() - diologni ichida state bo'lishi uchun.
        return StatefulBuilder(
          builder: (context, setState) {
            return Align(
                alignment:
                    _fromTop ? Alignment.topCenter : Alignment.bottomCenter,
                child: SafeArea(
                    child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.vertical(
                                bottom: Radius.circular(6))),
                        height: 180.h,
                        width: 320.w,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 20.w),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 120.w,
                                          child: Text(usernames.name,
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: Color.fromRGBO(
                                                      130, 130, 130, 1),
                                                  fontSize: 14.sp,
                                                  fontWeight:
                                                      FontWeight.w900))),
                                      Container(
                                        child: Text(usernames.userkarta,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Color.fromRGBO(
                                                    51, 51, 51, 1),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w900)),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 120.w,
                                        child: Text(usernames.username,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,
                                                color: Color.fromRGBO(
                                                    130, 130, 130, 1),
                                                fontSize: 14.sp,
                                                fontWeight: FontWeight.w900)),
                                      ),
                                      Container(
                                        child: Column(
                                          children: [
                                            Container(
                                                child: Text(usernames.userfoune,
                                                    style: TextStyle(
                                                        decoration:
                                                            TextDecoration.none,
                                                        color: Color.fromRGBO(
                                                            130, 130, 130, 1),
                                                        fontSize: 14.sp,
                                                        fontWeight:
                                                            FontWeight.w900))),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Divider(
                                    height: 2.h,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(
                                    height: 10.h,
                                  ),
                                  Container(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Container(
                                          width: 20,
                                          height: 20,
                                          decoration: BoxDecoration(
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      "assets/images/Chiqish.png"))),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        StartPage2()));
                                          },
                                          child: Text("Chiqish",
                                              style: TextStyle(
                                                  decoration:
                                                      TextDecoration.none,
                                                  color: Color.fromRGBO(
                                                      51, 51, 51, 1),
                                                  fontSize: 14.sp,
                                                  fontWeight: FontWeight.w900)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ))));
          },
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position:
              Tween(begin: Offset(0, _fromTop ? -1 : 1), end: Offset(0, 0))
                  .animate(anim1),
          child: child,
        );
      },
    );
  }
}
