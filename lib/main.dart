import 'package:eppa/Repasitory/Registor/animationpage.dart';

import 'libruaryclass.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<EpaProvider>(create: ((context) => EpaProvider())),
    ChangeNotifierProvider<RegionProvider>(
        create: ((context) => RegionProvider()))
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MaterialApp(
              debugShowCheckedModeBanner: false, home:  Registraciya());
        });
  }
}
