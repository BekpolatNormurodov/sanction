import 'package:sanctions/library.dart';

class SearchAppBar {
  searchAppBar(title, controller) {
    return Container(
      width: Get.width - 280,
      padding: EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.green,
        border: Border(
          bottom: BorderSide(
            color: Colors.green.shade700,
            width: 1.4,
          ),
          top: BorderSide(
            color: Colors.green.shade700,
            width: 1.4,
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Container(),
          Text(
            title,
            style: GoogleFonts.slabo13px(
              textStyle: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.w800,
                letterSpacing: .8,
                wordSpacing: 2,
              ),
            ),
          ),
          Row(
            children: [
              AnimationSearchBar(
                onChanged: (text) {
                  // names = _names!.where((e) {
                  //   return e.toLowerCase().contains(text.toLowerCase());
                  // }).toList();
                  // setState(() {});
                },
                searchTextEditingController: controller,
                closeIconColor: Colors.deepPurple.shade700,
                centerTitle: ' ',
                hintText: 'Izlash...',
                hintStyle: GoogleFonts.slabo13px(
                  textStyle: TextStyle(
                    color: Colors.grey.shade600,
                    fontSize: 13,
                    shadows: [
                      BoxShadow(
                        offset: Offset(.5, .5),
                        blurRadius: 1,
                        color: Colors.red.shade100,
                      )
                    ],
                  ),
                ),
                textStyle: GoogleFonts.slabo13px(
                  textStyle: TextStyle(fontSize: 13),
                ),
                isBackButtonVisible: false,
                cursorColor: Colors.deepPurple.shade700,
                duration: Duration(milliseconds: 300),
                searchFieldHeight: 36,
                searchBarHeight: 42,
                searchBarWidth: 320,
                horizontalPadding: 5,
                verticalPadding: 8,
                searchIconColor: Colors.deepPurple.shade700,
                searchFieldDecoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                    color: Colors.deepPurple.shade700,
                    width: .5,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
