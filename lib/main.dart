import 'package:sanction/library.dart';

main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider<HomeProvider>(
        create: (context) => HomeProvider(),
      ),
      ChangeNotifierProvider<SignedProvider>(
        create: (context) => SignedProvider(),
      ),
      ChangeNotifierProvider<DefinedProvider>(
        create: (context) => DefinedProvider(),
      ),
       ChangeNotifierProvider<PdfProvider>(
        create: (context) => PdfProvider(),
      ),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1920.0, 1057.0),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          home: GetMaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.slabo13pxTextTheme(),
            ),
            home: IntroPage(),
          ),
        );
      },
    );
  }
}
