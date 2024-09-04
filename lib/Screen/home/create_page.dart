import 'package:sanctions/library.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  TextEditingController? nameController;
  TextEditingController? surnameController;
  TextEditingController? fathernameController;
  TextEditingController? birthdayController;
  TextEditingController? passportNumberController;
  TextEditingController? idNumberController;
  TextEditingController? aboutController;

  String? sud;
  String? car;

  @override
  void initState() {
    nameController = TextEditingController();
    surnameController = TextEditingController();
    fathernameController = TextEditingController();
    birthdayController = TextEditingController();
    passportNumberController = TextEditingController();
    idNumberController = TextEditingController();
    aboutController = TextEditingController();

    sud = "sud";
    car = "car";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            width: (Get.width - 280) / 2,
            height: 44,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              inputFormatters: [
                TextInputMask(
                  mask: '\\ 99/99/9999',
                  placeholder: '_ ',
                  maxPlaceHolders: 8,
                )
              ],
              controller: birthdayController,
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
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: 'Birthday',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ),
          Container(
            width: (Get.width - 280) / 2,
            height: 44,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              controller: nameController,
              cursorColor: Colors.black.withOpacity(.5),
              cursorWidth: 1,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                fontSize: 15,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: 'Tuman',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ),
          Container(
            width: (Get.width - 280) / 2,
            height: 44,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              controller: surnameController,
              cursorColor: Colors.black.withOpacity(.5),
              cursorWidth: 1,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                fontSize: 15,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ),
          Container(
            width: (Get.width - 280) / 2,
            height: 44,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              controller: fathernameController,
              cursorColor: Colors.black.withOpacity(.5),
              cursorWidth: 1,
              keyboardType: TextInputType.name,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                fontSize: 15,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: "",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ),
          Container(
            width: (Get.width - 280) / 2,
            height: 44,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              controller: passportNumberController,
              cursorColor: Colors.black.withOpacity(.5),
              cursorWidth: 1,
              textInputAction: TextInputAction.next,
              style: TextStyle(
                fontSize: 15,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ),
          Container(
            width: (Get.width - 280) / 2,
            height: 44,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              inputFormatters: [
                TextInputMask(
                  mask: '\\ 99999999999999',
                  placeholder: '_ ',
                  maxPlaceHolders: 14,
                )
              ],
              controller: idNumberController,
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
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                border: InputBorder.none,
                hintText: '',
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
          ),
          Container(
            width: (Get.width - 280) / 2,
            margin: EdgeInsets.symmetric(vertical: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black.withOpacity(.5)),
                borderRadius: BorderRadius.circular(6)),
            child: TextFormField(
              controller: aboutController,
              cursorColor: Colors.black.withOpacity(.5),
              cursorWidth: 1,
              keyboardType: TextInputType.multiline,
              maxLines: 6,
              style: TextStyle(
                fontSize: 15,
                wordSpacing: 1,
                letterSpacing: 1,
              ),
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                border: InputBorder.none,
                hintText: "",
                hintStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.black.withOpacity(.4),
                ),
              ),
            ),
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
    );
  }
}
