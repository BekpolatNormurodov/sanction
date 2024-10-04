import 'package:sanction/library.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> with TickerProviderStateMixin {
  AnimationController? _controller;
  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        lowerBound: 0.0,
        upperBound: 1.0,
        duration: Duration(seconds: 1));

    _controller!.forward();
    _controller!.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.offAll(LoginPage());
        },
        child: Container(
          width: Get.width,
          height: Get.height,
          color: Color.fromRGBO(68, 68, 68, 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 1057.0,
                    height: 1000.0 * _controller!.value,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/IIV-logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Container(
                    width: 692.0,
                    height: 1000.0 * _controller!.value,
                    alignment: Alignment.center,
                    child: TypeWriter.text(
                      "O'ZBEKISTON RESPUBLIKASI ICHKI ISHLAR VAZIRLIGI KIBERXAVFSIZLIK   MARKAZI",
                      style: TextStyle(
                          color: Colors.yellow.shade600,
                          fontSize: 50.0,
                          shadows: [
                            Shadow(
                              offset: Offset(3, 2),
                              color: Colors.red,
                              blurRadius: 1,
                            ),
                          ]),
                      textAlign: TextAlign.justify,
                      duration: const Duration(milliseconds: 20),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AnimationRouter extends PageRouteBuilder {
  final Widget page;
  final int seconds;
  AnimationRouter(this.page, this.seconds)
      : super(
          transitionDuration: Duration(seconds: seconds),
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
                CurvedAnimation(parent: animation1, curve: Curves.easeIn),
              ),
              child: child,
            );
          },
        );
}
