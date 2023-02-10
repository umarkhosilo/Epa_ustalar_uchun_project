import 'package:eppa/NavigationBar/AmaliyotTarihi.dart';
import 'package:eppa/NavigationBar/ProfilPage.dart';
import 'package:eppa/Repasitory/katalog/Katalog.dart';
import 'package:eppa/StartPage.dart';
import 'package:eppa/pageteat.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Repasitory/katalog/epa_provider.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider<EpaProvider>(create: ((context) => EpaProvider())
      ),
    ],
     child: const MyApp()
    ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
        return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage()
    );
        });
  }
}
