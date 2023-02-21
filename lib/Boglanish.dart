import 'libruaryclass.dart';

class BoglanishPage extends StatefulWidget {
  const BoglanishPage({Key? key}) : super(key: key);

  @override
  State<BoglanishPage> createState() => _BoglanishPageState();
}

class _BoglanishPageState extends State<BoglanishPage>
    with TickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 7), () {
      Navigator.push(context, AnimationRouter(StartPage2()));
    });
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 7));

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Rahmat!",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Telefon raqamingizni qabul qildik!",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            Text(
              "Siz bilan bog’lanamiz!",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            SizedBox(
              height: 120,
            ),
            Container(
              width: 120.w,
              height: 120.h,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/images/ptichka.png"))),
            ),
            SizedBox(
              height: 260,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(Icons.info, color: Colors.red),
                  Text(
                    "        Agar bugun yakshanba bo’lsa,\n siz bilan dushanba kuni bog’lanamiz!",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AnimationRouter extends PageRouteBuilder {
  final Widget page;
  AnimationRouter(this.page)
      : super(
          transitionDuration: Duration(seconds: 3),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
          ) {
            return page;
          },
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation1,
            Animation<double> animation2,
            Widget child,
          ) {
            return FadeTransition(
              opacity: Tween(begin: 0.0, end: 1.0).animate(
                CurvedAnimation(
                    parent: animation1, curve: Curves.easeInOutQuart),
              ),
              child: child,
            );
          },
        );
}
