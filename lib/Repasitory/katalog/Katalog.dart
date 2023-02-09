import 'dart:math';
import 'package:eppa/NavigationBar/ProfilPage.dart';
import 'package:eppa/Repasitory/katalog/ongroute.dart';
import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
// import 'package:eppa/Repasitory/katalog/epa_model.dart';

import 'epa_provider.dart';

class Katalog extends StatefulWidget {
  @override
  State<Katalog> createState() => _KatalogState();
}

class _KatalogState extends State<Katalog> with TickerProviderStateMixin {
  bool _expanded2 = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      Provider.of<EpaProvider>(context, listen: false).getdata();
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
              backgroundColor: Color.fromARGB(255, 240, 233, 233),
              body: Consumer<EpaProvider>(
                builder: (BuildContext context, EpaProvider snapshot, child) {
                  if (snapshot.isLoading) {
                    return Center(
                      child: CircularProgressIndicator(
                        color: Colors.green,
                        strokeWidth: 5.w,
                      ),
                    );
                  }

                  return Container(
                    child: ListView.builder(
                        itemCount: snapshot.data.length,
                        itemBuilder: ((context, index) {
                          if (index == 0) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 8.h),
                              child: ExpansionWidget(
                                onSaveState: (value) => _expanded2 = value,
                                onRestoreState: () => _expanded2,
                                duration: const Duration(milliseconds: 300),
                                titleBuilder: (_, double easeInValue,
                                    bool isExpaned, toogleFunction) {
                                  return SizedBox(
                                    height: 56.h,
                                    child: Material(
                                      borderRadius: BorderRadius.vertical(
                                          top: Radius.circular(6.r),
                                          bottom: Radius.circular(
                                              _expanded2 ? 0 : 6.r)),
                                      color: Color.lerp(Colors.grey.shade50,
                                          Colors.red, easeInValue),
                                      child: GestureDetector(
                                        onTap: () {
                                          toogleFunction(animated: true);
                                          print("_expended2: ${_expanded2}");
                                        },
                                        child: Container(
                                          child: ListTile(
                                              leading: Container(
                                                child: Image(
                                                    image: AssetImage(
                                                        snapshot.data[0].img)),
                                              ),
                                              title: Text(
                                               " snapshot.data[index].title",
                                                style: TextStyle(
                                                    color: Color.lerp(
                                                        Colors.black,
                                                        Colors.white,
                                                        easeInValue),
                                                    fontSize: 14.sp),
                                              ),
                                              trailing: Transform.rotate(
                                                angle: pi * easeInValue,
                                                child: Icon(
                                                  Icons.remove,
                                                  size: 20,
                                                  color: Colors.white,
                                                ),
                                              )),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                content: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(
                                          color: Colors.red, width: 2.w),
                                      borderRadius: BorderRadius.vertical(
                                          bottom: Radius.circular(6.r))),
                                  width: double.infinity,
                                  padding: EdgeInsets.only(
                                      left: 12.w, right: 12.w, bottom: 8.h),
                                  child: Container(
                                    margin: EdgeInsets.only(top: 6.h),
                                    height: 170.h,
                                    child: ListView.builder(
                                        itemCount:
                                            4,
                                        itemBuilder: (context, i) {
                                          return Column(
                                            children: [
                                              InkWell(
                                                onTap: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              ProfilPage()));
                                                },
                                                child: ListTile(
                                                  leading: Container(
                                                    width: 15.w,
                                                    height: 15.h,
                                                    decoration: BoxDecoration(
                                                        color: Colors.grey,
                                                        shape: BoxShape.circle),
                                                  ),
                                                  title: Text(
                                                    "snapshot.data[0].option![i]",
                                                    style: TextStyle(
                                                      fontSize: 13.sp,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Divider(
                                                color: Color.fromRGBO(
                                                    189, 189, 189, 1),
                                              )
                                            ],
                                          );
                                        }),
                                  ),
                                ),
                              ),
                            );
                          }
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OngRoutePage(
                                            snapshot.data[index]
                                          )));
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(
                                  horizontal: 20.w, vertical: 8.h),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(6.r)),
                              width: 328.w,
                              height: 55.h,
                              child: ListTile(
                                title: Text(snapshot.data[index].title),
                                leading: Container(
                                  child: Image(
                                      image:
                                          AssetImage(snapshot.data[index].img)),
                                ),
                              ),
                            ),
                          );
                        })),
                  );
                },
              ));
        });
  }
}
