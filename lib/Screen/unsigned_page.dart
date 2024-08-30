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
    return Container(
      width: Get.width - 330,
      decoration: BoxDecoration(
        color: Colors.white,
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
              borderRadius: BorderRadius.circular(10),
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
    );
  }
}
