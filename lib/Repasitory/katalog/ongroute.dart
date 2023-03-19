import 'package:eppa/libruaryclass.dart';

class OngRoutePage extends StatefulWidget {
KatalogModel data;
  OngRoutePage(this.data,{Key? key})
      : super(key: key);

  @override
  State<OngRoutePage> createState() => _OngRoutePageState();
}

class _OngRoutePageState extends State<OngRoutePage> {
 @override
  Widget build(BuildContext context) {
          return Scaffold(
            backgroundColor: Color.fromARGB(255, 240, 233, 233),
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Color.fromARGB(255, 240, 233, 233),
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios, color: Colors.black)),
              title: Text(
                "Ortga",
                style: TextStyle(
                    color: Color.fromRGBO(51,51,51,1),
                    fontSize: 25.sp,
                    fontWeight: FontWeight.w700),
              ),
            ),
            body: Container(
              alignment: Alignment.center,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 30.w,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Text(
                        widget.data.title!,
                        style: TextStyle(
                          color: Color.fromARGB(255, 71, 68, 68),
                            fontSize: 25.sp, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(vertical: 10.h),
                        child: ListView.builder(
                            itemCount: widget.data.products!.length,
                            itemBuilder: ((context, index) {
                              return Column(
                                children: [
                                  Container(
                                    
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 240, 233, 233),
                                          borderRadius:
                                              BorderRadius.circular(6)),
                                      child: ListTile(
                                        leading: Container(
                                          width: 66.w,
                                          height: 66.h,
                                           decoration: BoxDecoration(
                                            color: Colors.white,
                                               image: DecorationImage(
                                                  image: AssetImage(
                                                       widget.data.products![index].img!)),
                                              borderRadius:
                                                  BorderRadius.circular(6)),
                                        ),
                                        trailing: Container(
                                            height: 90.h,
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.end,
                                              children: [
                                                Text(
                                                  " ${widget.data.products![index].tralling!} \nbalga olish\nmumkun",
                                                    style: TextStyle(
                                                        fontSize: 9.sp,
                                                        fontWeight:
                                                            FontWeight.w600)),
                                              ],
                                            )),
                                        title: Container(
                                          child: Text(
                                            widget.data.products![index].title!,
                                            style: TextStyle(
                                              color: Color.fromARGB(255, 71, 68, 68),
                                                fontWeight: FontWeight.w800),
                                          ),
                                        ),
                                        subtitle: Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 7.h),
                                            child: Text(
                                            widget.data.products![index].subtitle!,
                                            )),
                                      )),
                                  Divider(
                                    height: 7.h,
                                  )
                                ],
                              );
                            })),
                      ),
                    ),
                  ]),
            ),
          );
      
  }
}
