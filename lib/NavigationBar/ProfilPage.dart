import 'package:eppa/Boglanish.dart';
import 'package:eppa/NavigationBar/ButtonNavigationBar.dart';
import 'package:eppa/libruaryclass.dart';

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
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                usernames.username,
                style: TextStyle(color: Colors.grey, fontSize: 14.sp),
              ),
            ],
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
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          height: 690.h,
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
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30.w)),
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
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30.w)),
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
                height: 80.h,
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
                      child: Text("Biz bilan bog’lanish")))
            ],
          ),
        ),
      ),
    );
  }
}
