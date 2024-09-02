import 'package:sanctions/library.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return Scaffold(
      backgroundColor: Color.fromRGBO(248, 248, 248, 1),
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
                    height: 68,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(23, 0, 53, .8),
                    ),
                    child: Row(
                      children: [
                        Image.asset("assets/images/IIV-logo.png"),
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
                homeProvider.activeIndex == 1
                    ? HomeButtonClass().activeButton(
                        title: "Yuborilgan",
                        indexActive: 1,
                      )
                    : HomeButtonClass().noActiveButton(
                        context,
                        title: "Yuborilgan",
                        indexActive: 1,
                      ),
                homeProvider.activeIndex == 2
                    ? HomeButtonClass().activeButton(
                        title: "Tayyorlangan",
                        indexActive: 2,
                      )
                    : HomeButtonClass().noActiveButton(
                        context,
                        title: "Tayyorlangan",
                        indexActive: 2,
                      ),
                homeProvider.activeIndex == 3
                    ? HomeButtonClass().activeButton(
                        title: "Ochiladigan",
                        indexActive: 3,
                      )
                    : HomeButtonClass().noActiveButton(
                        context,
                        title: "Ochiladigan",
                        indexActive: 3,
                      ),
                homeProvider.activeIndex == 4
                    ? HomeButtonClass().activeButton(
                        title: "Yaratish",
                        indexActive: 4,
                      )
                    : HomeButtonClass().noActiveButton(
                        context,
                        title: "Yaratish",
                        indexActive: 4,
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
        child: Container(
          width: 230,
          height: 38,
          margin: EdgeInsets.only(bottom: 24),
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.centerLeft,
          child: Row(
            children: [
              Icon(Icons.settings, color: Colors.white, size: 22),
              SizedBox(width: 8),
              Text(
                "Sozlamalar",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}