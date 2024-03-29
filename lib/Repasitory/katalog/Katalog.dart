import 'package:eppa/libruaryclass.dart';

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
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<EpaProvider>(context, listen: false).getdata();
    });
  }
  List<String> _items = ["a", "b", "c", "d"];
  @override
  Widget build(BuildContext context) {
   
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

                  return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: ((context, index) {
                        // if (index == ) {
                        //   return Container(
                        //     margin: EdgeInsets.symmetric(
                        //         horizontal: 20.w, vertical: 8.h),
                        //     child: ExpansionWidget(
                        //       onSaveState: (value) => _expanded2 = value,
                        //       onRestoreState: () => _expanded2,
                        //       duration: const Duration(milliseconds: 300),
                        //       titleBuilder: (_, double easeInValue,
                        //           bool isExpaned, toogleFunction) {
                        //         return SizedBox(
                        //           height: 56.h,
                        //           child: Material(
                        //             borderRadius: BorderRadius.vertical(
                        //                 top: Radius.circular(6.r),
                        //                 bottom: Radius.circular(
                        //                     _expanded2 ? 0 : 6.r)),
                        //             color: Color.lerp(Colors.grey.shade50,
                        //                 Colors.red, easeInValue),
                        //             child: GestureDetector(
                        //               onTap: () {
                        //                 toogleFunction(animated: true);
                        //                 print("_expended2: ${_expanded2}");
                        //               },
                        //               child: Container(
                        //                 child: ListTile(
                        //                     leading: Container(
                        //                       child: Image(
                        //                           image: AssetImage(
                        //                               snapshot.data[0].img,), color: Color.lerp(Color.fromRGBO(79,79,79,1),
                        //                               Colors.white,
                        //                               easeInValue),),
                        //                     ),
                        //                     title: Text(
                        //                       snapshot.data[index].title,
                        //                       style: TextStyle(
                        //                           color: Color.lerp(
                        //                               Colors.black,
                        //                               Colors.white,
                        //                               easeInValue),
                        //                           fontSize: 14.sp),
                        //                     ),
                        //                     trailing: Transform.rotate(
                        //                       angle: pi * easeInValue,
                        //                       child: Icon(
                        //                         Icons.remove,
                        //                         size: 20,
                        //                         color: Colors.white,
                        //                       ),
                        //                     )),
                        //               ),
                        //             ),
                        //           ),
                        //         );
                        //       },
                        //       content: Container(
                        //         decoration: BoxDecoration(
                        //             color: Colors.white,
                        //             border: Border.all(
                        //                 color: Colors.red, width: 2.w),
                        //             borderRadius: BorderRadius.vertical(
                        //                 bottom: Radius.circular(6.r))),
                        //         width: double.infinity,
                        //         padding: EdgeInsets.only(
                        //             left: 12.w, right: 12.w, bottom: 8.h),
                        //         child: Container(
                        //           margin: EdgeInsets.only(top: 6.h),
                        //           height: 170.h,
                        //           child: ListView.builder(
                        //               itemCount: 4,
                        //               itemBuilder: (context, i) {
                        //                 return Column(
                        //                   children: [
                        //                     InkWell(
                        //                       onTap: () {},
                        //                       child: Container(
                        //                         height: 40.h,
                        //                         child: ListTile(
                        //                           leading: Container(
                        //                             width: 15.w,
                        //                             height: 15.h,
                        //                             decoration: BoxDecoration(
                        //                                 color: Colors.grey,
                        //                                 shape: BoxShape.circle),
                        //                           ),
                        //                           title: Text(
                        //                             Info.Products[i],
                        //                             style: TextStyle(
                        //                               fontSize: 13.sp,
                        //                             ),
                        //                           ),
                        //                         ),
                        //                       ),
                        //                     ),
                        //                     Divider(
                        //                       color: Color.fromRGBO(
                        //                           189, 189, 189, 1),
                        //                     )
                        //                   ],
                        //                 );
                        //               }),
                        //         ),
                        //       ),
                        //     ),
                        //   );
                        // }
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        OngRoutePage(snapshot.data[index])));
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
                      }));
                },
              ));
 
  }
}
