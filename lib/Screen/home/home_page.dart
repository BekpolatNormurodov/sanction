import 'package:sanctions/library.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    HomeProviderPage homeProvider = Provider.of<HomeProviderPage>(context);
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
                homeProvider.activeIndex == 1
                    ? Container(
                        width: 240,
                        height: 40,
                        margin: EdgeInsets.only(top: 24, left: 18),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 101, 45, 255),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              color: Color.fromARGB(255, 101, 45, 255),
                            ),
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.white,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.send, color: Colors.white, size: 18),
                            SizedBox(width: 12),
                            Text(
                              "Yuborilgan",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                letterSpacing: .7,
                              ),
                            ),
                          ],
                        ),
                      )
                    : GestureDetector(
                        onTap: () => homeProvider.onClickSended(),
                        child: Container(
                          width: 242,
                          height: 38,
                          margin: EdgeInsets.only(top: 24, left: 18),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: Row(
                            children: [
                              Icon(Icons.send, color: Colors.white, size: 18),
                              SizedBox(width: 12),
                              Text(
                                "Yuborilgan",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  letterSpacing: .7,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                homeProvider.activeIndex == 2
                    ? Container(
                        width: 240,
                        height: 40,
                        margin: EdgeInsets.only(top: 16, left: 18),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 101, 45, 255),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              color: Color.fromARGB(255, 101, 45, 255),
                            ),
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.white,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.check, color: Colors.white, size: 20),
                            SizedBox(width: 10),
                            Text(
                              "Tayyorlangan",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                letterSpacing: .7,
                              ),
                            ),
                          ],
                        ),
                      )
                    : GestureDetector(
                        onTap: () => homeProvider.onClickSigned(),
                        child: Container(
                          width: 242,
                          height: 38,
                          margin: EdgeInsets.only(top: 16, left: 18),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.2),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Icon(Icons.check, color: Colors.white, size: 20),
                              SizedBox(width: 10),
                              Text(
                                "Tayyorlangan",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  letterSpacing: .7,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                homeProvider.activeIndex == 3
                    ? Container(
                        width: 240,
                        height: 40,
                        margin: EdgeInsets.only(top: 16, left: 18),
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        alignment: Alignment.centerLeft,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 101, 45, 255),
                          borderRadius: BorderRadius.circular(4),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(2, 2),
                              color: Color.fromARGB(255, 101, 45, 255),
                            ),
                            BoxShadow(
                              offset: Offset(1, 1),
                              color: Colors.white,
                            )
                          ],
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.add, color: Colors.white, size: 22),
                            SizedBox(width: 8),
                            Text(
                              "Yaratish",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.white,
                                letterSpacing: .7,
                              ),
                            ),
                          ],
                        ),
                      )
                    : GestureDetector(
                        onTap: () => homeProvider.onClickCreate(),
                        child: Container(
                          width: 242,
                          height: 38,
                          margin: EdgeInsets.only(top: 16, left: 18),
                          padding: EdgeInsets.symmetric(horizontal: 16),
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.2),
                              borderRadius: BorderRadius.circular(4)),
                          child: Row(
                            children: [
                              Icon(Icons.add, color: Colors.white, size: 22),
                              SizedBox(width: 8),
                              Text(
                                "Yaratish",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  letterSpacing: .7,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                Expanded(
                  child: Container(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      width: 230,
                      height: 38,
                      margin: EdgeInsets.only(bottom: 20),
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
                ),
              ],
            ),
          ),
         homeProvider.activeIndex == 1 ? SendedPage() : homeProvider.activeIndex == 2 ? SignedPage() : CreatePage(),
        ],
      ),
    );
  }
}
