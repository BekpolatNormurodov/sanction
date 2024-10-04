// import 'package:blacklist/Repository/workers/worker_post.dart';
import 'package:sanction/Screen/settings/create_settings.dart';
import 'package:sanction/library.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  // String adminPassword = 'bek1995admin';
  String username = 'kali';
  String usersPassword = '1234';
  // bool hasToken = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(68, 68, 68, 1),
      body: _page(),
    );
  }

  Widget _page() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
      child: SingleChildScrollView(
        child: Container(
          width: Get.width - 1400,
          height: Get.height - 200,
          decoration: BoxDecoration(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _icon(),
              SizedBox(height: 100),
              _inputField("Username", usernameController, true),
              SizedBox(height: 20),
              _inputField("Password", passwordController, true),
              SizedBox(height: 50),
              _loginBtn(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _icon() {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Icon(Icons.lock, color: Colors.red.shade600, size: 120),
      ),
    );
  }

  Widget _inputField(
      String hintText, TextEditingController controller, isPassword) {
    var border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide(color: Colors.white),
    );

    return TextFormField(
      style: TextStyle(color: Colors.white),
      controller: controller,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white),
        enabledBorder: border,
        focusedBorder: border,
      ),
      obscureText: isPassword,
    );
  }

  Widget _loginBtn() {
    return ElevatedButton(
      onPressed: () async {
        if (passwordController.text == usersPassword) {
          Get.offAll(CreateSettings());
          Get.snackbar('Successful !!!', "Login va Parol to'g'ri kiritildi",
              backgroundColor: Colors.green.withOpacity(.8));
          // var response = await WorkersPost().workersPost(
          //   username: usernameController.text,
          //   admin: false.toString(),
          // );
          // Constant.username = response['username'];
          // Constant.admin = false;
          // setState(() {});
        }
        //  else if (passwordController.text == adminPassword) {
        //   Get.offAll(SearchPage());
        //   Get.snackbar('Successful !!!', 'Welcome to Admin Panel',
        //       backgroundColor: Colors.green.withOpacity(.8));

        //   var response = await WorkersPost().workersPost(
        //     username: usernameController.text,
        //     admin: true.toString(),
        //   );
        //   Constant.username = response['username'];
        //   Constant.admin = true;
        //   setState(() {});
        // }
        else {
          Get.snackbar(
            'Error:',
            'Login yoki parol xato !!!',
            backgroundColor: Colors.red.shade600,
            margin: EdgeInsets.only(left: 100, right: 100, top: 30),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: Colors.white.withOpacity(.9),
        padding: EdgeInsets.only(top: 20, bottom: 16),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Text(
          "ENTER",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            color: Colors.deepPurpleAccent.shade700,
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
      ),
    );
  }
}
