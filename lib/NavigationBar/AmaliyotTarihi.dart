import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../Info.dart';

class TapbarPage extends StatefulWidget {
  const TapbarPage({Key? key}) : super(key: key);
  @override
  State<TapbarPage> createState() => _TapbarPageState();
}

class _TapbarPageState extends State<TapbarPage> with TickerProviderStateMixin {
  TabController? _controller;
  bool _controllercolor = true;
  bool _controllercolor2 = false;

  @override
  void initState() {
    _controller = TabController(length: 2, vsync: this, initialIndex: 0);

    super.initState();
   
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
            body: SingleChildScrollView(
              child: Column(children: [
                SizedBox(
                  height: 32.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(children: [
                    Container(
                      width: 328.w,
                      height: 40.h,
                      child: Center(
                          child: Text(
                        "Amaliyot tarixi",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                    SizedBox(
                      height: 16.sp,
                    ),
                    TabBar(
                        indicatorColor: Colors.transparent,
                        onTap: (value) {
                          setState(() {
                            if (value == 0) {
                              _controllercolor = true;
                              _controllercolor2 = false;
                            }
                            if (value == 1) {
                              _controllercolor2 = true;
                              _controllercolor = false;
                            }
                          });
                        },
                        controller: _controller,
                        tabs: [
                          Container(
                            decoration: BoxDecoration(
                                color: _controllercolor == true &&
                                        _controllercolor2 == false
                                    ? Colors.red
                                    : Color.fromRGBO(79, 79, 79, 1),
                                borderRadius: BorderRadius.circular(10.r)),
                            width: 156.w,
                            height: 34.h,
                            child: Center(
                              child: Text(
                                "Xaridlar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                color: _controllercolor == false &&
                                        _controllercolor2 == true
                                    ? Colors.red
                                    : Color.fromRGBO(79, 79, 79, 1),
                                borderRadius: BorderRadius.circular(10.r)),
                            width: 156.w,
                            height: 34.h,
                            child: Center(
                              child: Text(
                                "Buyurtmalar",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.sp,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ]),
                    SizedBox(
                      height: 4,
                    ),
                    Container(
                      width: 328.w,
                      height: 4.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100.r),
                          color: Colors.red),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    _controllercolor == false && _controllercolor2
                        ? SingleChildScrollView(
                            child: Container(
                              width: 328.w,
                              height: 390.h,
                              child: ListView.builder(
                                  itemCount: Info.produ.length,
                                  itemBuilder: ((context, index) {
                                    return Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                               color: Color.fromRGBO(
                                                      196, 196, 196, 1))),
                                        ),
                                      child: Container(
                                        
                                        width: 358.w,
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            3.r),
                                                    color: Colors.white,
                                                  ),
                                                  width: 65.w,
                                                  height: 19.h,
                                                  margin: EdgeInsets.symmetric(
                                                      vertical: 10.h),
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "доставлен",
                                                        style: TextStyle(
                                                            color: Colors.green,
                                                            fontSize: 8.sp,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      )),
                                                ),
                                                Container(
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/images/product.png")),
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                                  width: 60.w,
                                                  height: 60.h,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Container(
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                  Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 7.h),
                                                      child: Container(
                                                        width: 129.w,
                                                        child: Text(
                                                          Info.produ[index],
                                                          style: TextStyle(
                                                              fontSize: 8.5.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800),
                                                        ),
                                                      )),
                                                  Container(
                                                    child: Row(children: [
                                                      Container(
                                                        child: Image(
                                                            image: AssetImage(
                                                                "assets/images/icon7.png")),
                                                      ),
                                                      Text(
                                                        "09-05-2021",
                                                        style: TextStyle(
                                                            fontSize: 9.sp),
                                                      )
                                                    ]),
                                                  ),
                                                  SizedBox(
                                                    height: 4,
                                                  ),
                                                  Container(
                                                    child: Row(children: [
                                                      Text(
                                                        "продавец:",
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 2,
                                                      ),
                                                      Container(
                                                        width: 52,
                                                        height: 18,
                                                        child: Image(
                                                            image: AssetImage(
                                                                "assets/images/elmakon 1.png")),
                                                      )
                                                    ]),
                                                  )
                                                ])),
                                            SizedBox(width: 17.w),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "1ta",
                                                        style: TextStyle(
                                                            fontSize: 11.sp),
                                                      )),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 10.w,
                                                      vertical: 10.h),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6),
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.04)),
                                                  width: 40.w,
                                                  height: 30.h,
                                                ),
                                                Container(
                                                  child: Text(
                                                    "стоимость:",
                                                    style:
                                                        TextStyle(fontSize: 11.sp),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4.h,
                                                ),
                                                Container(
                                                  child: Text("1240b",
                                                      style: TextStyle(
                                                          fontSize: 12.sp)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })),
                            ),
                          )
                        : SingleChildScrollView(
                            child: Container(
                              width: 328.w,
                              height: 420.h,
                              child: ListView.builder(
                                  shrinkWrap: true,
                                  itemCount: Info.produ.length,
                                  itemBuilder: ((context, index) {
                                    return Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                          border: Border(
                                              bottom: BorderSide(
                                               color: Color.fromRGBO(
                                                      196, 196, 196, 1))),
                                        ),
                                      child: Container(
                                        
                                        width: 358.w,
                                        child: Row(
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              children: [
                                                SizedBox(height: 7,),
                                                Container(
                                                  child: Image(
                                                      image: AssetImage(
                                                          "assets/images/product.png")),
                                                  margin: EdgeInsets.symmetric(
                                                    horizontal: 10.h,
                                                  ),
                                                  decoration: BoxDecoration(
                                                      color: Colors.white,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6)),
                                                  width: 60.w,
                                                  height: 60.h,
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              width: 4.w,
                                            ),
                                            Container(
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                  Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              vertical: 7.h),
                                                      child: Container(
                                                        width: 129.w,
                                                        child: Text(
                                                          Info.ip[index],
                                                          style: TextStyle(
                                                              fontSize: 9.sp,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w800),
                                                        ),
                                                      )),
                                                  Container(
                                                    child: Row(children: [
                                                      Container(
                                                        child: Image(
                                                            image: AssetImage(
                                                                "assets/images/icon7.png")),
                                                      ),
                                                      Text(
                                                        "09-05-2021",
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      )
                                                    ]),
                                                  ),
                                                  SizedBox(
                                                    height: 4.h,
                                                  ),
                                                  Container(
                                                    child: Row(children: [
                                                      Text(
                                                        "продавец:",
                                                        style: TextStyle(
                                                          fontSize: 12.sp,
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        width: 2.w,
                                                      ),
                                                      Container(
                                                        width: 52.w,
                                                        height: 18.h,
                                                        child: Image(
                                                            image: AssetImage(
                                                                "assets/images/elmakon 1.png")),
                                                      )
                                                    ]),
                                                  )
                                                ])),
                                            SizedBox(width: 9.w),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              children: [
                                                Container(
                                                  child: Container(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "1ta",
                                                        style: TextStyle(
                                                            fontSize: 11.sp),
                                                      )),
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal: 10.w,
                                                      vertical: 10.h),
                                                  decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              6.r),
                                                      color:
                                                          const Color.fromRGBO(
                                                              0, 0, 0, 0.04)),
                                                  width: 40.w,
                                                  height: 30.h,
                                                ),
                                                Container(
                                                  child: Text(
                                                    "стоимость:",
                                                    style:
                                                        TextStyle(fontSize: 11.sp),
                                                  ),
                                                ),
                                                SizedBox(
                                                  height: 4.h,
                                                ),
                                                Container(
                                                  child: Text("1240b",
                                                      style: TextStyle(
                                                          fontSize: 12.sp)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  })),
                            ),
                          )
                  ]),
                )
              ]),
            ),
          );
        });
  }
}
