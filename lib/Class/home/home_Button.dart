import 'package:sanctions/library.dart';

class HomeButton {
  activeButton({required String title, required int indexActive}) {
    return Container(
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
          indexActive == 1
              ? Icon(Icons.send, color: Colors.white, size: 18)
              : indexActive == 2
                  ? Icon(Icons.check, color: Colors.white, size: 18)
                  : indexActive == 3
                      ? Icon(Icons.star, color: Colors.white, size: 18)
                      : Icon(Icons.add, color: Colors.white, size: 18),
          SizedBox(width: 12),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
              color: Colors.white,
              letterSpacing: .7,
            ),
          ),
        ],
      ),
    );
  }

  noActiveButton(context) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return GestureDetector(
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
    );
  }
}
