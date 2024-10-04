import 'package:flutter/cupertino.dart';
import 'package:sanction/Screen/settings/edit_settings.dart';
import 'package:sanction/library.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isHover1 = false;
  bool isHover2 = false;
  bool isHover3 = false;
  bool isHover4 = false;
  bool isHoverSettings = false;
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Row(
        children: [
          Container(
            width: 280,
            height: Get.height,
            decoration: BoxDecoration(
              border: Border(right: BorderSide(color: Colors.red, width: .7)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 35, 19, 107), Colors.deepPurple],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // LOGO Box
                Material(
                  elevation: 1,
                  color: Color.fromRGBO(23, 0, 53, .8),
                  shadowColor: Colors.red,
                  child: Container(
                    width: 280,
                    height: 70,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(23, 0, 53, .8),
                    ),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          onHover: (e) {},
                          child: FlipCard(
                            front: Container(
                                child:
                                    Image.asset("assets/images/IIV-logo.png")),
                            back: Container(
                              child: Image.asset("assets/images/IIV-logo.png"),
                            ),
                          ),
                        ),
                        SizedBox(width: 14),
                        Text(
                          "SANKSIYA",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            letterSpacing: 1.5,
                            shadows: [
                              BoxShadow(
                                offset: Offset(4, 2),
                                blurRadius: 2,
                                color: Colors.red,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // Buttons
                InkWell(
                  onTap: () {},
                  onHover: (e) {
                    isHover1 = e;
                    setState(() {});
                  },
                  child: homeProvider.activeIndex == 1
                      ? HomeButtonClass().activeButton(
                          title: "Yuborilgan",
                          indexActive: 1,
                        )
                      : HomeButtonClass().noActiveButton(
                          context,
                          title: "Yuborilgan",
                          indexActive: 1,
                          isHover: isHover1,
                        ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (e) {
                    isHover2 = e;
                    setState(() {});
                  },
                  child: homeProvider.activeIndex == 2
                      ? HomeButtonClass()
                          .activeButton(title: "Tayyorlangan", indexActive: 2)
                      : HomeButtonClass().noActiveButton(
                          context,
                          title: "Tayyorlangan",
                          indexActive: 2,
                          isHover: isHover2,
                        ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (e) {
                    isHover3 = e;
                    setState(() {});
                  },
                  child: homeProvider.activeIndex == 3
                      ? HomeButtonClass()
                          .activeButton(title: "Ochiladigan", indexActive: 3)
                      : HomeButtonClass().noActiveButton(
                          context,
                          title: "Ochiladigan",
                          indexActive: 3,
                          isHover: isHover3,
                        ),
                ),
                InkWell(
                  onTap: () {},
                  onHover: (e) {
                    isHover4 = e;
                    setState(() {});
                  },
                  child: homeProvider.activeIndex == 4
                      ? HomeButtonClass()
                          .activeButton(title: "Yaratish", indexActive: 4)
                      : HomeButtonClass().noActiveButton(
                          context,
                          title: "Yaratish",
                          indexActive: 4,
                          isHover: isHover4,
                        ),
                ),

                // Settings
                settings(),
              ],
            ),
          ),

          // Sanksions ListView
          homeProvider.activeIndex == 1
              ? SendedPage()
              : homeProvider.activeIndex == 2
                  ? SignedPage()
                  : homeProvider.activeIndex == 3
                      ? DefinedPage()
                      : CreatePage(),
        ],
      ),
    );
  }

  // Settings
  settings() {
    return Expanded(
      child: Container(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          onTap: () {
            // showCupertinoDialog(
            //   barrierDismissible: true,
            //   context: context,
            //   builder: (context) {
            //     return AlertDialog(
            //       content: Settings(),
            //     );
            //   },
            // );
            Get.to(Get.to(EditSettings()));
          },
          onHover: (e) {
            isHoverSettings = e;
            setState(() {});
          },
          child: Container(
            width: 230,
            height: 38,
            margin: EdgeInsets.only(bottom: isHoverSettings ? 26 : 24),
            padding:
                EdgeInsets.symmetric(horizontal: isHoverSettings ? 18 : 16),
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Icon(Icons.settings,
                    color: Colors.white, size: isHoverSettings ? 23 : 22),
                SizedBox(width: 8),
                Text(
                  "Sozlamalar",
                  style: GoogleFonts.aBeeZee(
                    textStyle: TextStyle(
                      fontSize: isHoverSettings ? 17 : 16,
                      color: Colors.white,
                      letterSpacing: 1,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
