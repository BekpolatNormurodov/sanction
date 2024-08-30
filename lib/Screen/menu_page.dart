import 'package:sanctions/library.dart';

class menuPage extends StatefulWidget {
  const menuPage({super.key});

  @override
  State<menuPage> createState() => _menuPageState();
}

class _menuPageState extends State<menuPage> {
  @override
  Widget build(BuildContext context) {
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
                colors: [
                  const Color.fromARGB(255, 35, 19, 107),
                  Colors.deepPurple
                ],
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
                    height: 56,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(23, 0, 53, .8),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.menu, color: Colors.white, size: 26),
                        SizedBox(width: 14),
                        Text(
                          "SANKSIYA",
                          style: GoogleFonts.slabo13px(
                            textStyle: TextStyle(
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
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 240,
                  height: 40,
                  margin: EdgeInsets.only(top: 24, left: 18),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 101, 45, 255),
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(2, 2),
                          color: const Color.fromARGB(255, 101, 45, 255),
                        ),
                        BoxShadow(
                          offset: Offset(1, 1),
                          color: Colors.white,
                        )
                      ]),
                  child: Row(
                    children: [
                      Icon(Icons.send, color: Colors.white, size: 18),
                      SizedBox(width: 12),
                      Text(
                        "Yuborilgan",
                        style: GoogleFonts.slabo13px(
                          textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            letterSpacing: .7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                      Icon(Icons.check, color: Colors.white, size: 18),
                      SizedBox(width: 10),
                      Text(
                        "Tayyorlangan",
                        style: GoogleFonts.slabo13px(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: .7,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
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
                      Icon(Icons.add, color: Colors.white, size: 21),
                      SizedBox(width: 8),
                      Text(
                        "Yaratish",
                        style: GoogleFonts.slabo13px(
                          textStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            letterSpacing: .7,
                          ),
                        ),
                      ),
                    ],
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
                          style: GoogleFonts.slabo13px(
                            textStyle: TextStyle(
                              fontSize: 16,
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
              ],
            ),
          ),
          SendedPage(),
        ],
      ),
    );
  }
}
