import 'package:sanction/library.dart';

class CreateSettings extends StatefulWidget {
  const CreateSettings({Key? key}) : super(key: key);

  @override
  State<CreateSettings> createState() => _CreateSettingsState();
}

class _CreateSettingsState extends State<CreateSettings> {
  TextEditingController? nameController;
  TextEditingController? surnameController;
  TextEditingController? fathernameController;
  TextEditingController? officeController;
  TextEditingController? unvonController;
  TextEditingController? phoneController;

  @override
  void initState() {
    nameController = TextEditingController();
    surnameController = TextEditingController();
    fathernameController = TextEditingController();
    officeController = TextEditingController();
    unvonController = TextEditingController();
    phoneController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;

    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 68, 68, 1),
      body: SafeArea(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 700, vertical: 20),
          alignment: Alignment.center,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 36, vertical: 32),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(1, 1),
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 8,
                      ),
                      BoxShadow(
                        offset: Offset(-1, -1),
                        color: Colors.black.withOpacity(.1),
                        blurRadius: 8,
                      )
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(),
                          Text(
                            "Oper malumotlari",
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 18),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              isDark
                                  ? LineAwesomeIcons.sun
                                  : LineAwesomeIcons.star_and_crescent_solid,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 60),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Ism:"),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: TextFormField(
                                controller: nameController,
                                cursorColor: Colors.black.withOpacity(.5),
                                cursorWidth: 1,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                      LineAwesomeIcons.pen_fancy_solid,
                                      size: 20),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Familiya:"),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: TextFormField(
                                controller: surnameController,
                                cursorColor: Colors.black.withOpacity(.5),
                                cursorWidth: 1,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    LineAwesomeIcons.pen_fancy_solid,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Sharif:"),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: TextFormField(
                                controller: fathernameController,
                                cursorColor: Colors.black.withOpacity(.5),
                                cursorWidth: 1,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    LineAwesomeIcons.pen_fancy_solid,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Lavozim:"),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.5)),
                                  borderRadius: BorderRadius.circular(6.r)),
                              child: TextFormField(
                                controller: officeController,
                                cursorColor: Colors.black.withOpacity(.5),
                                cursorWidth: 1,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                    Icons.local_police_outlined,
                                    size: 20,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Unvon:"),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: TextFormField(
                                controller: unvonController,
                                cursorColor: Colors.black.withOpacity(.5),
                                cursorWidth: 1,
                                keyboardType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon: Icon(
                                      Icons.workspace_premium_outlined,
                                      size: 20),
                                ),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text("Tel:"),
                            Container(
                              height: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6.r),
                              ),
                              child: TextFormField(
                                inputFormatters: [
                                  TextInputMask(
                                    mask: '\\ (99) 999 99 99',
                                    placeholder: '_ ',
                                    maxPlaceHolders: 9,
                                  )
                                ],
                                controller: phoneController,
                                cursorColor: Colors.black.withOpacity(.5),
                                cursorWidth: 1,
                                keyboardType: TextInputType.phone,
                                style: TextStyle(fontSize: 14),
                                decoration: InputDecoration(
                                  contentPadding: EdgeInsets.only(
                                    left: 10,
                                    right: 10,
                                    top: 8,
                                  ),
                                  border: InputBorder.none,
                                  suffixIcon:
                                      Icon(Icons.phone_outlined, size: 20),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: Get.width,
                        height: 40,
                        margin: EdgeInsets.only(
                          left: 10,
                          right: 10,
                          top: 150,
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            await Hive.box('data').put('name', nameController!.text);
                            await Hive.box('data').put('surname', surnameController!.text);
                            await Hive.box('data').put('fatherName', fathernameController!.text);
                            await Hive.box('data').put('office', officeController!.text);
                            await Hive.box('data').put('unvon', unvonController!.text);
                            await Hive.box('data').put('phone', phoneController!.text);
                            Get.to(HomePage());
                            Get.snackbar(
                              'Successful',
                              'Oper malumotlari kiritildi !!!',
                              backgroundColor: Colors.green,
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          label: Text(
                            "Next",
                            style: TextStyle(
                              color: Colors.black.withOpacity(.8),
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
