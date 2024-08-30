import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanctions/Screen/unsigned_page.dart';

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
            width: 270,
            height: Get.height,
            decoration: BoxDecoration(
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
                Container(
                  width: 270,
                  height: 52,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(23, 0, 53, .8),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.menu, color: Colors.white, size: 24),
                      SizedBox(width: 14),
                      Text(
                        "SANKSIYA",
                        style: GoogleFonts.slabo13px(
                          textStyle: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              letterSpacing: 1,
                              shadows: [
                                BoxShadow(
                                  offset: Offset(2, 1),
                                  blurRadius: 5,
                                  color: Colors.red,
                                ),
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 230,
                  height: 38,
                  margin: EdgeInsets.only(top: 20, left: 18),
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.3),
                      borderRadius: BorderRadius.circular(4)),
                  child: Row(
                    children: [
                      Icon(Icons.send, color: Colors.white, size: 15),
                      SizedBox(width: 10),
                      Text(
                        "Yuborilgan",
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
                Text(
                  "Tayyorlangan",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          UnsignedPage(),
        ],
      ),
    );
  }
}
