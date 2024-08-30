import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SendedPage extends StatefulWidget {
  const SendedPage({super.key});

  @override
  State<SendedPage> createState() => _SendedPageState();
}

class _SendedPageState extends State<SendedPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 280,
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
      ),
      child: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 50, vertical: 8),
            padding: EdgeInsets.only(left: 20, right: 10),
            width: Get.width,
            height: 54,
            decoration: BoxDecoration(
              color: Colors.grey.shade50,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 2),
                  blurRadius: 5,
                  color: Colors.black.withOpacity(.1)
                )
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star_border_outlined,
                      size: 24,
                      color: Colors.black.withOpacity(.5),
                    ),
                    SizedBox(width: 16),
                    Text(
                      "Pul ko'paytirish:",
                      style: GoogleFonts.slabo13px(
                        textStyle: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Навбаҳор тумани ИИБ Навбатчилик қисмининг Шакл-1 китобида рўйхатга олинган ",
                      style: GoogleFonts.slabo13px(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Text(
                      "19124",
                      style: GoogleFonts.slabo13px(
                        textStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "-сонли мурожаат",
                      style: GoogleFonts.slabo13px(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: EdgeInsets.only(bottom: 3),
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    "22.08.2024",
                    style: GoogleFonts.robotoSerif(
                      textStyle: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
