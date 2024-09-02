import 'package:sanctions/library.dart';

class HomeButtonClass {
  // Active Button
  activeButton({required String title, required int indexActive}) {
    return Container(
      width: 240,
      height: 40,
      margin: EdgeInsets.only(top: indexActive == 1 ? 24 : 16, left: 18),
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
          Icon(
            indexActive == 1
                ? Icons.send
                : indexActive == 2
                    ? Icons.check
                    : indexActive == 3
                        ? Icons.star
                        : Icons.add,
            color: Colors.white,
            size: indexActive == 1
                ? 20
                : indexActive == 4
                    ? 24
                    : 22,
          ),
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

  // No Active Button
  noActiveButton(
    context, {
    required String title,
    required int indexActive,
    required bool isHover,
  }) {
    HomeProvider homeProvider = Provider.of<HomeProvider>(context);
    return InkWell(
      // OnTap Button
      onTap: () => indexActive == 1
          ? homeProvider.onClickSended()
          : indexActive == 2
              ? homeProvider.onClickSigned()
              : indexActive == 3
                  ? homeProvider.onClickDefined()
                  : homeProvider.onClickCreate(),
      child: Container(
        width: 242,
        height: 38,
        margin: EdgeInsets.only(top: indexActive == 1 ? 24 : 16, left: 18),
        padding: EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: isHover
              ? Colors.grey.withOpacity(.2)
              : Color.fromARGB(255, 101, 45, 255),
          borderRadius: BorderRadius.circular(4),
        ),
        child: Row(
          children: [
            // Icons
            Icon(
              indexActive == 1
                  ? Icons.send
                  : indexActive == 2
                      ? Icons.check
                      : indexActive == 3
                          ? Icons.star
                          : Icons.add,
              color: Colors.white,
              size: indexActive == 1
                  ? 18
                  : indexActive == 4
                      ? 22
                      : 20,
            ),
            SizedBox(width: 12),
            Text(
              title,
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
