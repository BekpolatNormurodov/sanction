import 'package:sanction/library.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  String valueRegion = '...';
  TextEditingController shak1Controller = TextEditingController();
  String telDate = '...';
  TextEditingController addressController = TextEditingController();
  TextEditingController fullnameController = TextEditingController();
  String birthday = '...';
  String hackType = '...';
  String hackApk = '...';
  TextEditingController infoController = TextEditingController();
  TextEditingController fromCardController = TextEditingController();
  TextEditingController inCardController = TextEditingController();
  TextEditingController cardFullnameController = TextEditingController();
  bool isOwner = false;
  String loseDate = '...';
  TextEditingController loseTimeController = TextEditingController();
  TextEditingController lossController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width - 280,
      alignment: Alignment.center,
      color: Colors.grey.shade400,
      child: Container(
        width: 1200.w,
        height: Get.height - 80,
        alignment: Alignment.center,
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
        child: Container(
          width: 1080,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  titleSection("1. SHAHAR-TUMAN IIB NAVBATCHILIK QISMI"),
                  Row(
                    children: [
                      Container(
                        width: 224,
                        height: 40,
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
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(.6))),
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
                            regionIIB("Tomdi tumani"),
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
                        width: 190,
                        height: 40,
                        child: TextFormField(
                          controller: shak1Controller,
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
                                color: Colors.black.withOpacity(.8),
                                fontSize: 14,
                              ),
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
                      SizedBox(width: 40),
                      Container(
                        width: 170,
                        height: 40,
                        child: DateFormatField(
                          type: DateFormatType.type2,
                          decoration: const InputDecoration(
                            suffixIconColor: Colors.black54,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0)),
                                borderSide: BorderSide(color: Colors.black54)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0)),
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
                            telDate =
                                "${date!.day > 9 ? date.day : "0${date.day}"}.${date.month > 9 ? date.month : "0${date.month}"}.${date.year}";
                            setState(() {});
                          },
                        ),
                      ),
                    ],
                  ),
                  titleSection("2. ARIZA QOLDIRGAN FUQARONING MA'LUMOTLARI"),
                  Row(
                    children: [
                      Container(
                        width: 360,
                        height: 40,
                        child: TextFormField(
                          controller: fullnameController,
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
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
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
                        width: 170,
                        height: 40,
                        child: DateFormatField(
                          type: DateFormatType.type2,
                          decoration: const InputDecoration(
                            suffixIconColor: Colors.black54,
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0)),
                                borderSide: BorderSide(color: Colors.black54)),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(6.0)),
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
                            birthday =
                                "${date!.day > 9 ? date.day : "0${date.day}"}.${date.month > 9 ? date.month : "0${date.month}"}.${date.year}";
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: 460,
                        height: 44,
                        child: TextFormField(
                          controller: addressController,
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
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            border: InputBorder.none,
                            labelText: 'Address',
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
                    ],
                  ),
                  titleSection("3. PUL YECHILISH USULI"),
                  Row(
                    children: [
                      Container(
                        width: 224,
                        height: 40,
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
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(.6))),
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
                            hackType = e!;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: 190,
                        height: 40,
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
                                borderSide: BorderSide(
                                    color: Colors.black.withOpacity(.6))),
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
                            hackApk = e!;
                            setState(() {});
                          },
                        ),
                      ),
                      SizedBox(width: 40),
                      Container(
                        width: 580,
                        height: 44,
                        child: TextFormField(
                          controller: infoController,
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
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
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
                  titleSection(
                      "4 PUL KO'CHIRISHIDA ISHLATILGAN PLASTIK KARTALAR"),
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
                                width: 320,
                                height: 42,
                                child: TextFormField(
                                  inputFormatters: [
                                    TextInputMask(
                                      mask: '\\ 9999  9999  9999  9999',
                                      placeholder: '_ ',
                                      maxPlaceHolders: 18,
                                    )
                                  ],
                                  controller: fromCardController,
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
                          SizedBox(height: 24),
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
                                width: 320,
                                height: 42,
                                child: TextFormField(
                                  inputFormatters: [
                                    TextInputMask(
                                      mask: '\\ 9999  9999  9999  9999',
                                      placeholder: '_ ',
                                      maxPlaceHolders: 18,
                                    )
                                  ],
                                  controller: inCardController,
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
                      SizedBox(width: 40),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 360,
                                height: 44,
                                child: TextFormField(
                                  controller: cardFullnameController,
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
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 12),
                                    border: InputBorder.none,
                                    labelText: 'F.I.SH',
                                    labelStyle: TextStyle(
                                      fontSize: 13,
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
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.6)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: CheckboxListTile(
                                  side: BorderSide(
                                      width: 1.2,
                                      color: Colors.black.withOpacity(.6)),
                                  contentPadding: EdgeInsets.only(left: 10),
                                  activeColor: Colors.black.withOpacity(.6),
                                  title: Text(
                                    "O'ziga tegishli",
                                    style: TextStyle(fontSize: 13),
                                  ),
                                  value: isOwner,
                                  onChanged: (bool? e) {
                                    isOwner = e!;
                                    setState(() {});
                                  },
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 24),
                          Row(
                            children: [
                              Container(
                                width: 180,
                                height: 40,
                                child: DateFormatField(
                                  type: DateFormatType.type2,
                                  decoration: const InputDecoration(
                                    suffixIconColor: Colors.black54,
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.0)),
                                        borderSide:
                                            BorderSide(color: Colors.black54)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(6.0)),
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
                                    loseDate =
                                        "${date!.day > 9 ? date.day : "0${date.day}"}.${date.month > 9 ? date.month : "0${date.month}"}.${date.year}";
                                    setState(() {});
                                  },
                                ),
                              ),
                              SizedBox(width: 40),
                              Container(
                                width: 140,
                                height: 40,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: Colors.black.withOpacity(.6)),
                                  borderRadius: BorderRadius.circular(6),
                                ),
                                child: TextFormField(
                                  controller: loseTimeController,
                                  inputFormatters: [
                                    TextInputMask(
                                      mask: '\\ 99:99',
                                      placeholder: '_ ',
                                      maxPlaceHolders: 8,
                                    )
                                  ],
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
                                    contentPadding: EdgeInsets.only(
                                        left: 14, right: 16, top: 10),
                                    border: InputBorder.none,
                                    suffixIcon: Icon(
                                      Icons.access_time,
                                      color: Colors.black.withOpacity(.7),
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
                                width: 180,
                                height: 40,
                                child: TextFormField(
                                  controller: lossController,
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.black),
                                  cursorColor: Colors.black,
                                  cursorWidth: .8,
                                  decoration: InputDecoration(
                                    suffixIcon: Icon(
                                      Icons.attach_money,
                                      color: Colors.black.withOpacity(.7),
                                      size: 18,
                                    ),
                                    labelText: "Zarar",
                                    labelStyle: GoogleFonts.roboto(
                                      textStyle: TextStyle(
                                        color: Colors.black.withOpacity(.7),
                                        fontSize: 13,
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
                ],
              ),
              Container(
                width: 800.w,
                height: 42,
                margin: EdgeInsets.only(top: 100, bottom: 40),
                child: ElevatedButton.icon(
                  onPressed: () async {
                    await PdfView.generate(
                      region: valueRegion,
                      shakl1: shak1Controller.text,
                      telDate: telDate,
                      adress: addressController.text,
                      fullname: fullnameController.text,
                      birthday: birthday,
                      hackType: hackType,
                      hackApk: hackApk,
                      info: infoController.text,
                      fromCard: fromCardController.text,
                      inCard: inCardController.text,
                      cardFullname: cardFullnameController.text,
                      owner: isOwner,
                      loseDate: loseDate,
                      loseTime: loseTimeController.text,
                      loss: lossController.text,
                      model: SendedModel(),
                    );
                    Get.snackbar(
                      'Successful !!!',
                      'Sanksiya yaratildi !!!',
                      backgroundColor: Colors.green,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8))),
                  label: Text(
                    "Sanksiya yaratish",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
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

  titleSection(title) => Container(
        width: 600,
        margin: EdgeInsets.only(top: 70, bottom: 8),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            wordSpacing: 3,
          ),
        ),
      );
}




// Diverder
//  Container(
//               margin: EdgeInsets.symmetric(vertical: 0),
//               width: 1064,
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Container(
//                     margin: EdgeInsets.symmetric(horizontal: 10),
//                     width: 40,
//                     height: 1,
//                     color: Colors.black.withOpacity(.4),
//                   ),
//                    Container(
//                      margin: EdgeInsets.symmetric(horizontal: 10),
//                     width: 80,
//                     height: 1,
//                     color: Colors.black.withOpacity(.4),
//                   ),
//                    Container(
//                    margin: EdgeInsets.symmetric(horizontal: 10),
//                     width: 500,
//                     height: 1.2,
//                     color: Colors.black.withOpacity(.4),
//                   ),
//                    Container(
//                    margin: EdgeInsets.symmetric(horizontal: 10),
//                     width: 80,
//                     height: 1,
//                     color: Colors.black.withOpacity(.4),
//                   ),
//                    Container(
//                    margin: EdgeInsets.symmetric(horizontal: 10),
//                     width: 40,
//                     height: 1,
//                     color: Colors.black.withOpacity(.4),
//                   ),
//                 ],
//               ),
//             ),
           
