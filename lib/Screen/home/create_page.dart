import 'package:sanctions/library.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  // TextEditingController? nameController;
  // TextEditingController? surnameController;
  // TextEditingController? fathernameController;
  // TextEditingController? birthdayController;
  // TextEditingController? passportNumberController;
  // TextEditingController? idNumberController;
  // TextEditingController? aboutController;

  String? sud;
  String? car;

  String? valueRegion;
  String? valueType;
  String? valueApk;

  @override
  void initState() {
    // nameController = TextEditingController();
    // surnameController = TextEditingController();
    // fathernameController = TextEditingController();
    // birthdayController = TextEditingController();
    // passportNumberController = TextEditingController();
    // idNumberController = TextEditingController();
    // aboutController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 600,
              margin: EdgeInsets.only(bottom: 8),
              child: Text(
                "1. SHAHAR-TUMAN IIB NAVBATCHILIK QISMI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  wordSpacing: 3,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 42,
                  child: DropdownButtonFormField(
                    focusColor: Colors.transparent,
                    hint: Text(
                      "Shahar-tumanlar",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.6))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    items: [
                      regionIIB("Navoiy shahar"),
                      regionIIB("Karmana tumani"),
                      regionIIB("Navbahor tumani"),
                      regionIIB("Konimex tumani"),
                      regionIIB("Qiziltepa tumani"),
                      regionIIB("Xatirchi tumani"),
                      regionIIB("Zarafshon shahar"),
                      regionIIB("Uchquduq tumani"),
                      regionIIB("Nurota tumani"),
                      regionIIB("Tomdi"),
                      regionIIB("G'azg'on tumani"),
                    ],
                    onChanged: (e) {
                      valueRegion = e!;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 140,
                  height: 42,
                  child: TextFormField(
                    style: TextStyle(fontSize: 14, color: Colors.black),
                    cursorColor: Colors.black,
                    cursorWidth: .8,
                    decoration: InputDecoration(
                      suffixIcon: Icon(
                        Icons.discount,
                        color: Colors.black.withOpacity(.6),
                        size: 18,
                      ),
                      labelText: "Shakl-1",
                      labelStyle: GoogleFonts.roboto(
                        textStyle: TextStyle(
                            color: Colors.black.withOpacity(.8), fontSize: 14),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.8),
                        ),
                      ),
                    ),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                  ),
                ),
                SizedBox(width: 200),
                Container(
                  width: 180,
                  height: 42,
                  child: DateFormatField(
                    type: DateFormatType.type2,
                    decoration: const InputDecoration(
                      suffixIconColor: Colors.black54,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.black54)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.black54)),
                      border: InputBorder.none,
                      label: Text(
                        "kun/oy/yil",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    onComplete: (date) {
                      setState(() {
                        // _date = date;
                      });
                    },
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 142,
                  height: 42,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black.withOpacity(.5)),
                      borderRadius: BorderRadius.circular(6)),
                  child: TextFormField(
                    inputFormatters: [
                      TextInputMask(
                        mask: '\\ 99:99',
                        placeholder: '_ ',
                        maxPlaceHolders: 8,
                      )
                    ],
                    // controller: birthdayController,
                    cursorColor: Colors.black.withOpacity(.5),
                    cursorWidth: 1,
                    keyboardType: TextInputType.phone,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 15,
                      wordSpacing: 1,
                      letterSpacing: 1,
                    ),
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.only(left: 14, right: 16, top: 10),
                      border: InputBorder.none,
                      suffixIcon: Icon(
                        Icons.access_time,
                        color: Colors.black.withOpacity(.6),
                      ),
                      hintText: "_ _ : _ _",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.9),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 460,
              margin: EdgeInsets.only(top: 50, bottom: 8),
              child: Text(
                "2. ARIZA QOLDIRGAN FUQARONING MA'LUMOTLARI",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  wordSpacing: 3,
                ),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 380,
                  height: 44,
                  child: TextFormField(
                    // controller: nameController,
                    cursorColor: Colors.black.withOpacity(.6),
                    cursorWidth: 1.2,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 15,
                      wordSpacing: 1,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      border: InputBorder.none,
                      labelText: 'Adress',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                      ),
                      suffixIcon: Icon(
                        Icons.location_on,
                        color: Colors.black.withOpacity(.6),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 200),
                Container(
                  width: 366,
                  height: 44,
                  child: TextFormField(
                    // controller: nameController,
                    cursorColor: Colors.black.withOpacity(.6),
                    cursorWidth: 1.2,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 15,
                      wordSpacing: 1,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      border: InputBorder.none,
                      labelText: 'F.I.SH',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                      ),
                      suffixIcon: Icon(
                        Icons.person,
                        color: Colors.black.withOpacity(.6),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 180,
                  height: 42,
                  child: DateFormatField(
                    type: DateFormatType.type2,
                    decoration: const InputDecoration(
                      suffixIconColor: Colors.black54,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.black54)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          borderSide: BorderSide(color: Colors.black54)),
                      border: InputBorder.none,
                      label: Text(
                        "kun/oy/yil",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                        ),
                      ),
                    ),
                    onComplete: (date) {
                      setState(() {
                        // _date = date;
                      });
                    },
                  ),
                ),
              ],
            ),
            Container(
              width: 460,
              margin: EdgeInsets.only(top: 50, bottom: 8),
              child: Text(
                "3. PUL YECHILISH USULI",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, wordSpacing: 3),
              ),
            ),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 42,
                  child: DropdownButtonFormField(
                    focusColor: Colors.transparent,
                    hint: Text(
                      "Usuli",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.6))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    items: [
                      typeHack("Zararli dastur"),
                      typeHack("Fishing"),
                      typeHack("Pul ko'paytirish"),
                      typeHack("Onlayn savdo"),
                      typeHack("Boshqa"),
                    ],
                    onChanged: (e) {
                      valueType = e!;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(width: 40),
                Container(
                  width: 140,
                  height: 42,
                  child: DropdownButtonFormField(
                    focusColor: Colors.transparent,
                    hint: Text(
                      "apk",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                      ),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6),
                          borderSide:
                              BorderSide(color: Colors.black.withOpacity(.6))),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                    ),
                    items: [
                      typeApk("Click"),
                      typeApk("Payme"),
                      typeApk("Humans"),
                      typeApk("Paynet"),
                      typeApk("Boshqa"),
                    ],
                    onChanged: (e) {
                      valueType = e!;
                      setState(() {});
                    },
                  ),
                ),
                SizedBox(width: 200),
                Container(
                  width: 590,
                  height: 44,
                  child: TextFormField(
                    // controller: nameController,
                    cursorColor: Colors.black.withOpacity(.6),
                    cursorWidth: 1.2,
                    keyboardType: TextInputType.name,
                    textInputAction: TextInputAction.next,
                    style: TextStyle(
                      fontSize: 15,
                      wordSpacing: 1,
                    ),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black.withOpacity(.5),
                        ),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 12),
                      border: InputBorder.none,
                      labelText: 'Izoh',
                      labelStyle: TextStyle(
                        fontSize: 14,
                        color: Colors.black.withOpacity(.8),
                      ),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(left: 24, right: 10),
                        child: Icon(
                          Icons.info,
                          color: Colors.black.withOpacity(.6),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              width: 460,
              margin: EdgeInsets.only(top: 50, bottom: 10),
              child: Text(
                "4 PUL KO'CHIRISHIDA ISHLATILGAN PLASTIK KARTALAR",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 15, wordSpacing: 3),
              ),
            ),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "- Pul  yechilgan:",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            letterSpacing: .6,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 300,
                          height: 44,
                          child: TextFormField(
                            inputFormatters: [
                              TextInputMask(
                                mask: '\\ 9999  9999  9999  9999',
                                placeholder: '_ ',
                                maxPlaceHolders: 18,
                              )
                            ],
                            // controller: idNumberController,
                            cursorColor: Colors.black.withOpacity(.8),
                            cursorWidth: .8,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(
                              fontSize: 15,
                              wordSpacing: 1,
                              letterSpacing: 1,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                               enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.5),
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              labelText: 'Karta raqam',
                              labelStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.7),
                                letterSpacing: .2,
                              ),
                              suffixIcon: Icon(Icons.credit_card),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Text(
                          "- Kelib tushgan:",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            letterSpacing: .6,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: 300,
                          height: 44,
                          child: TextFormField(
                            inputFormatters: [
                              TextInputMask(
                                mask: '\\ 9999  9999  9999  9999',
                                placeholder: '_ ',
                                maxPlaceHolders: 18,
                              )
                            ],
                            // controller: idNumberController,
                            cursorColor: Colors.black.withOpacity(.8),
                            cursorWidth: .8,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(
                              fontSize: 15,
                              wordSpacing: 1,
                              letterSpacing: 1,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 12),
                              border: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                               enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              labelText: 'Karta raqam',
                              labelStyle: TextStyle(
                                fontSize: 13,
                                color: Colors.black.withOpacity(.7),
                                letterSpacing: .2,
                              ),
                              suffixIcon: Icon(Icons.credit_card),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(width: 148),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 366,
                      height: 44,
                      child: TextFormField(
                        // controller: nameController,
                        cursorColor: Colors.black.withOpacity(.6),
                        cursorWidth: 1.2,
                        keyboardType: TextInputType.name,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(
                          fontSize: 15,
                          wordSpacing: 1,
                        ),
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(.5),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.black.withOpacity(.5),
                            ),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: InputBorder.none,
                          labelText: 'F.I.SH',
                          labelStyle: TextStyle(
                            fontSize: 14,
                            color: Colors.black.withOpacity(.8),
                          ),
                          suffixIcon: Icon(
                            Icons.person,
                            color: Colors.black.withOpacity(.6),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Container(
                          width: 182,
                          height: 42,
                          child: DateFormatField(
                            type: DateFormatType.type2,
                            decoration: const InputDecoration(
                              suffixIconColor: Colors.black54,
                              enabledBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0)),
                                  borderSide:
                                      BorderSide(color: Colors.black54)),
                              focusedBorder: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(6.0)),
                                  borderSide:
                                      BorderSide(color: Colors.black54)),
                              border: InputBorder.none,
                              label: Text(
                                "kun/oy/yil",
                                style: TextStyle(
                                  color: Colors.black87,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ),
                            onComplete: (date) {
                              setState(() {
                                // _date = date;
                              });
                            },
                          ),
                        ),
                        SizedBox(width: 40),
                        Container(
                          width: 144,
                          height: 42,
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.black.withOpacity(.6)),
                              borderRadius: BorderRadius.circular(6)),
                          child: TextFormField(
                            inputFormatters: [
                              TextInputMask(
                                mask: '\\ 99:99',
                                placeholder: '_ ',
                                maxPlaceHolders: 8,
                              )
                            ],
                            // controller: birthdayController,
                            cursorColor: Colors.black.withOpacity(.5),
                            cursorWidth: 1,
                            keyboardType: TextInputType.phone,
                            textInputAction: TextInputAction.next,
                            style: TextStyle(
                              fontSize: 15,
                              wordSpacing: 1,
                              letterSpacing: 1,
                            ),
                            decoration: InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 14, right: 16, top: 10),
                              border: InputBorder.none,
                              suffixIcon: Icon(
                                Icons.access_time,
                                color: Colors.black.withOpacity(.6),
                              ),
                              hintText: "_ _ : _ _",
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: Colors.black.withOpacity(.9),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 40),
                        Container(
                          width: 140,
                          height: 42,
                          child: TextFormField(
                            style: TextStyle(fontSize: 14, color: Colors.black),
                            cursorColor: Colors.black,
                            cursorWidth: .8,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.attach_money,
                                color: Colors.black.withOpacity(.6),
                                size: 18,
                              ),
                              labelText: "Zarar",
                              labelStyle: GoogleFonts.roboto(
                                textStyle: TextStyle(
                                  color: Colors.black.withOpacity(.8),
                                  fontSize: 14,
                                ),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                 borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                                
                              ),
                               enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                 borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                                
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide(
                                  color: Colors.black.withOpacity(.6),
                                ),
                              ),
                            ),
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Container(
              width: (Get.width - 280) / 2,
              height: 40,
              margin: EdgeInsets.only(top: 60),
              child: ElevatedButton.icon(
                onPressed: () async {
                  // await UserPost().userPost(
                  //   isCourt: sud!,
                  //   isCar: car!,
                  //   name: nameController!.text,
                  //   surname: surnameController!.text,
                  //   fathername: fathernameController!.text,
                  //   birthday: birthdayController!.text,
                  //   passportNumber: passportNumberController!.text,
                  //   idNumber: idNumberController!.text,
                  //   about: aboutController!.text,
                  //   username: Constant.username,
                  // );
                  // Get.to(SearchPage());
                  Get.snackbar('Successful !!!', 'The Suspect added',
                      backgroundColor: Colors.green);
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.greenAccent.shade700),
                icon: Icon(
                  Icons.add_circle_outline,
                  color: Colors.black.withOpacity(.8),
                  size: 24,
                ),
                label: Text(
                  "Create Sanktion",
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
    );
  }

  DropdownMenuItem regionIIB(region) => DropdownMenuItem(
        child: Text(
          region,
          style: TextStyle(fontSize: 14),
        ),
        value: region,
        onTap: () {},
      );

  DropdownMenuItem typeHack(type) => DropdownMenuItem(
        child: Text(
          type,
          style: TextStyle(fontSize: 14),
        ),
        value: type,
        onTap: () {},
      );
  DropdownMenuItem typeApk(type) => DropdownMenuItem(
        child: Text(
          type,
          style: TextStyle(fontSize: 14),
        ),
        value: type,
        onTap: () {},
      );
}
