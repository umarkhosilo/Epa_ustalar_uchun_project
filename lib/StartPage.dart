import 'package:eppa/StartPage2.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> with TickerProviderStateMixin {
  AnimationController? _animationController;
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(seconds: 2), () {
      Navigator.push(context, AnimationRouter(StartPage2()));
    });
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 2));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.red,
        child: Center(
            child: Container(
          width: 200,
          height: 44,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("assets/images/Vector.png"))),
        )),
      ),
    );
  }
}









//Animation Page
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
                    parent: animation1, curve: Curves.easeInOutSine),
              ),
              child: child,
            );
          },
        );
}
