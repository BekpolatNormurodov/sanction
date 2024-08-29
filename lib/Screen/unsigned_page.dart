import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UnsignedPage extends StatefulWidget {
  const UnsignedPage({super.key});

  @override
  State<UnsignedPage> createState() => _UnsignedPageState();
}

class _UnsignedPageState extends State<UnsignedPage> {
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
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 200,
                  height: 40,
                  decoration: BoxDecoration(),
                  child: Text(
                    "Tayyorlanmagan",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Tayyorlangan",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 40, top: 40, right: 60),
            width: Get.width - 330,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(40)
            ),
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  width: Get.width,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade50,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text("Fishing"),
                      Text("№14139 sonli murojaat")
                    ],
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
