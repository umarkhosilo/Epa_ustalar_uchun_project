import '../../libruaryclass.dart';

class Registraciya extends StatefulWidget {
  const Registraciya({Key? key}) : super(key: key);

  @override
  State<Registraciya> createState() => _RegistraciyaState();
}

class _RegistraciyaState extends State<Registraciya> {
  Color qoshimchatelcolor = Color.fromRGBO(189, 189, 189, 1);
  Color namecolor = Color.fromRGBO(189, 189, 189, 1);
  Color usernamecolor = Color.fromRGBO(189, 189, 189, 1);
  Color otangizniismiColor = Color.fromRGBO(189, 189, 189, 1);
  Color logincolor = Color.fromRGBO(189, 189, 189, 1);
  Color tugilgansanacolor = Color.fromRGBO(189, 189, 189, 1);
  Color usertelcolor = Color.fromRGBO(189, 189, 189, 1);
  bool nameOnclick = false;
  bool loginOnclick = false;
  bool otangizniismiOnclik = false;
  bool usernameOnclick = false;
  bool tugilgansanaOnclick = false;
  bool userraqamonclick = false;
  bool usertelonclick = false;
  String _JamoIsh = "false";
  bool _jamoishenabled = false;
  List<String> listIsh = [
    "Santexnik",
    "Sotuvchi",
    "Elektrik",
    "Santexnik",
    "Mexanik"
  ];
  List<String> listTuman = [
    "Olmazor",
    "QoraQamich",
    "  Yunsabod",
    "Chilonzor",
    ""
  ];
  List<String> listViloyat = [
    "Toshkent",
    "Samarkand",
    "Buharo",
    "Horazim",
    "Hiva",
    "Qoraqalpokiston",
  ];
  String Tumantitle = "Tuman";
  String _ishTanlash = "T'anlash";
  String ViloyatTitle = "Viloyat";

  TextEditingController qoshimchatelcontrol = TextEditingController();
  TextEditingController usertelcontrol = TextEditingController();
  TextEditingController namecontrol = TextEditingController();
  TextEditingController usernamecontrol = TextEditingController();
  TextEditingController otangizniismicontrol = TextEditingController();
  TextEditingController logincontrol = TextEditingController();
  TextEditingController tugilgansanacontrol = TextEditingController();

  int? selectId;
  var maskFormatter3 = new MaskTextInputFormatter(
      mask: '##_##_####',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);


  var maskFormatter = new MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  var maskFormatter2 = new MaskTextInputFormatter(
      mask: '+998 (##) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy);

  void initState() {
    selectId = 0;
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<RegionProvider>(context, listen: false).getdata();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<RegionProvider>(
        builder: (BuildContext context, RegionProvider snapshot, child) {
      if (snapshot.isLoading) {
        return Center(
          child: CircularProgressIndicator(
            color: Colors.green,
            strokeWidth: 5,
          ),
        );
      }

      return SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(children: [
            SizedBox(height: 79.h),
            Container(
                alignment: Alignment.center,
                width: 328.w,
                height: 38.h,
                child: Text("Ro’yxatdan o’tish",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 24.sp))),
            SizedBox(height: 32.h),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: namecolor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                onChanged: (e) {
                  if (e.length > 3) {
                    namecolor = Colors.green;
                    nameOnclick = true;
                  } else {
                    nameOnclick = false;
                    namecolor = Colors.red;
                  }
                  setState(() {});
                },
                controller: namecontrol,
                cursorColor: Colors.black12,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "Ism",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: usernamecolor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                onChanged: (e) {
                  if (e.length > 3) {
                    usernamecolor = Colors.green;
                    usernameOnclick = true;
                  } else {
                    usernameOnclick = false;
                    usernamecolor = Colors.red;
                  }
                  setState(() {});
                },
                controller: usernamecontrol,
                cursorColor: Colors.black12,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "Familiya",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 5.h),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: otangizniismiColor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                onChanged: (e) {},
                controller: otangizniismicontrol,
                cursorColor: Colors.black12,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "Otangizning ismi",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 4.h),
            Container(
                width: 308.w, height: 25.h, child: Text("Tug’ilgan sana")),
            SizedBox(
              height: 4.h,
            ),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: tugilgansanacolor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                inputFormatters: [maskFormatter3],
                onChanged: (e) {
                  if (e.length > 3) {
                    tugilgansanacolor = Colors.green;
                    tugilgansanaOnclick = true;
                  } else {
                    tugilgansanaOnclick = false;
                    tugilgansanacolor = Colors.red;
                  }
                  setState(() {});
                },
                keyboardType: TextInputType.number,
                controller: tugilgansanacontrol,
                cursorColor: Colors.black12,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "__/__/____",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 35),
                    width: 280.w,
                    height: 20.h,
                    child: Text("Kasbingiz?")),
              ],
            ),
            SizedBox(height: 6.h),
            Container(
                margin: EdgeInsets.symmetric(horizontal: 18.w),
                child: Card(
                  child: ExpansionTile(
                    title: Text(_ishTanlash),
                    children: [
                      Container(
                          height: 180.h,
                          child: ListView.builder(
                              itemCount: listIsh.length,
                              itemBuilder: (((context, index) {
                                return InkWell(
                                  onTap: () {
                                    setState(() {
                                      _ishTanlash = listIsh[index];
                                    });
                                  },
                                  child: ListTile(title: Text(listIsh[index])),
                                );
                              }))))
                    ],
                  ),
                )),
            SizedBox(
              height: 12.h,
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text("Jamoa bo’lib ishlaysizmi? (ixtiyoriy)")),
              ],
            ),
            Row(
              children: [
                SizedBox(
                  width: 20.w,
                ),
                Container(
                  child: Radio(
                      value: "true",
                      groupValue: _JamoIsh,
                      onChanged: (String? e) {
                        _JamoIsh = e!;
                        setState(() {});
                      }),
                ),
                Text(
                  "Ha",
                ),
                Container(
                  child: Radio(
                      value: "false",
                      groupValue: _JamoIsh,
                      onChanged: (String? e) {
                        _JamoIsh = e!;
                        setState(() {});
                      }),
                ),
                Text("Yok")
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text("Necha kishi?")),
              ],
            ),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                keyboardType: TextInputType.number,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "_ _",
                  border: InputBorder.none,
                ),
                enabled: _JamoIsh == "true" ? true : false,
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Text("Yashash manzilingiz"),
                )
              ],
            ),
            SizedBox(
              height: 10.h,
            ),
            Container(
              height: 60.h,
              margin: EdgeInsets.symmetric(horizontal: 25.w),
              child: Card(
                child: DropdownButtonFormField2<RegionModel>(
                  dropdownMaxHeight: 200.h,
                  hint: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.w),
                    child: Text(ViloyatTitle),
                  ),
                  icon: Container(child: Icon(Icons.arrow_drop_down)),
                  buttonHeight: 60.h,
                  items: snapshot.data
                      .map((v) => DropdownMenuItem<RegionModel>(
                            value: v,
                            child: Row(
                              children: [
                                Container(child: Text(v.title.toString())),
                                Container()
                              ],
                            ),
                          ))
                      .toList(),
                  onChanged: (_value) {
                    print(_value!.id);
                    selectId = _value.id;
                    ViloyatTitle = (_value.toString());
                    setState(() {});
                  },
                ),
              ),
            ),
            SizedBox(
              height: 4.h,
            ),
            // ),
            // Container(
            //   height: 60.h,
            //   margin: EdgeInsets.symmetric(horizontal: 25.w),
            //   child: Card(
            //     child: DropdownButtonFormField2<String>(
            //       dropdownMaxHeight: 200.h,
            //       hint: Container(
            //         padding: EdgeInsets.symmetric(horizontal: 15.w),
            //         child: Container(child: Text(Tumantitle)),
            //       ),
            //       icon: Container(child: Icon(Icons.arrow_drop_down)),
            //       buttonHeight: 60,
            //       items: snapshot.data[selectId!].region!
            //           .map((v) => DropdownMenuItem<String>(
            //                 value: v,
            //                 child: Row(
            //                   children: [
            //                     Container(child: Text(v)),
            //                   ],
            //                 ),
            //               ))
            //           .toList(),
            //       onChanged: (_value) {
            //         Tumantitle = (_value.toString());
            //       },
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text("Telefon raqamingiz")),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: usertelcolor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                inputFormatters: [maskFormatter],
                onChanged: (e) {
                  if (e.length > 2) {
                    usertelcolor = Colors.green;
                    usertelonclick = true;
                  } else {
                    usertelonclick = false;
                    usertelcolor = Colors.red;
                  }
                  setState(() {});
                },
                keyboardType: TextInputType.number,
                controller: usertelcontrol,
                cursorColor: Colors.black12,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "998 -- --- -- --",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 30.w),
                    child: Text("Qo’shimcha raqam (ixtiyoriy)")),
              ],
            ),
            SizedBox(
              height: 5.h,
            ),
            Container(
              width: 328.w,
              height: 56.h,
              padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 5.h),
              margin: EdgeInsets.symmetric(horizontal: 30.w),
              decoration: BoxDecoration(
                  border: Border.all(width: 1.w, color: qoshimchatelcolor),
                  borderRadius: BorderRadius.circular(10.r)),
              child: TextFormField(
                inputFormatters: [maskFormatter2],
                onChanged: (e) {
                  if (e.length > 7) {
                    qoshimchatelcolor = Colors.green;
                  } else {
                    qoshimchatelcolor = Colors.red;
                  }
                },
                keyboardType: TextInputType.number,
                controller: qoshimchatelcontrol,
                cursorColor: Colors.black12,
                cursorWidth: 1.w,
                decoration: InputDecoration(
                  hintText: "998 -- --- -- --",
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(height: 16.h),
            Container(
              width: 300.w,
              height: 54.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {
                    usernames.name = namecontrol.text;
                    usernames.username = usernamecontrol.text;
                    usernames.fathername = otangizniismicontrol.text;
                    usernames.berthday = tugilgansanacontrol.text;
                    usernames.userfoune = usertelcontrol.text;
                    setState(() {
                      print(usernameOnclick);
                      if (nameOnclick &&
                          usernameOnclick &&
                          tugilgansanaOnclick &&
                          usertelonclick) {
                        showDialog(
                            context: context,
                            builder: (BuildContext) {
                              return AlertDialog(
                                title: Text("Ikki tomonlama kelishuv"),
                                actions: [
                                  ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          primary: Colors.orange),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    UserRaqamPage()));
                                      },
                                      child: Text("Roziman"))
                                ],
                                content: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text(
                                          "Гарантийный талон заполняется продавцом во время передачи товара потребителю.Проверьте комплектацию изделия до покупки.При обнаружении неисправности в дальнейшем, немедленно обратитесь в официальные сервис- центры EPA для диагностики и ремонта.В течение гарантийного срока, после диагностики и заключения официального сервис центра, фирма обязуется бесплатно устранить неполадки и недостатки, по вине производителя.При обнаружении неисправности в дальнейшем, немедленно обратитесь в официальные сервис- центры EPA для диагностики и ремонта.В течение гарантийного срока, после диагностики и заключения официального сервис центра, фирма обязуется бесплатно устранить неполадки и недостатки, по вине производителя.При обнаружении неисправности в дальнейшем, немедленно обратитесь в официальные сервис- центры EPA для диагностики и ремонта.В течение гарантийного срока, после диагностики и заключения официального сервис центра, фирма обязуется бесплатно устранить неполадки и недостатки, по вине производителя.При обнаружении неисправности в дальнейшем, немедленно обратитесь в официальные сервис- центры EPA для диагностики и ремонта.В течение гарантийного срока, после диагностики и заключения официального сервис центра, фирма обязуется бесплатно устранить неполадки и недостатки, по вине производителя.")
                                    ],
                                  ),
                                ),
                              );
                            });
                      } else {
                        if (!nameOnclick &&
                            !usernameOnclick &&
                            !tugilgansanaOnclick &&
                            !usertelonclick) {
                          namecolor = Colors.red;
                          usernamecolor = Colors.red;
                          tugilgansanacolor = Colors.red;
                          usertelcolor = Colors.red;
                        }
                      }
                    });
                  },
                  child: Text("Jo’natish")),
            ),
            SizedBox(
              height: 30,
            )
          ]),
        ),
      );
    }));
  }
}
