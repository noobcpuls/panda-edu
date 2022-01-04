import 'package:flutter/material.dart';
import 'package:flutter_application_3/pages/home_screen.dart';
import 'package:flutter_application_3/pages/preview_screen.dart';
import 'package:flutter_application_3/constants.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool _isFirst = true;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool isFirst = prefs.getBool("isFirst") ?? true;
  _isFirst = isFirst;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Panda education App",
      debugShowCheckedModeBanner: false,
      theme: PandaTheme.light(),
      home: _isFirst ? const PreviewScreen() : const HomeScreen(),
    );
  }
}

class PandaTheme {
  static TextTheme lightTextTheme = const TextTheme(
      headline1: TextStyle(
          color: mainTextColor, fontSize: 28, fontWeight: FontWeight.w800),
      headline2: TextStyle(
          color: subTextColor, fontSize: 14, fontWeight: FontWeight.w400),
      bodyText1: TextStyle(
          color: mainTextColor, fontSize: 16, fontWeight: FontWeight.w400),
      bodyText2: TextStyle(
          color: subTextColor2, fontSize: 11, fontWeight: FontWeight.w400),
      button: TextStyle(
        color: subTextColor,
      ),
      caption: TextStyle(
        color: subTextColor,
      ));
  static TextTheme darkTextTheme = const TextTheme(
      headline1: TextStyle(
          color: Colors.white, fontSize: 28, fontWeight: FontWeight.w800),
      headline2: TextStyle(
          color: whiteColor, fontSize: 14, fontWeight: FontWeight.w400),
      bodyText1: TextStyle(
          color: Colors.white, fontSize: 16, fontWeight: FontWeight.w400),
      bodyText2: TextStyle(
          color: whiteColor, fontSize: 11, fontWeight: FontWeight.w400),
      button: TextStyle(
        color: whiteColor,
      ),
      caption: TextStyle(
        color: whiteColor,
      ));

  static ThemeData light() {
    return ThemeData(
        textTheme: lightTextTheme,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: mainTextColor, backgroundColor: Colors.white
        ),
        primaryColor: greyColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.white, secondaryVariant: mainTextColor),
        
    );
  }

  static ThemeData dark() {
    return ThemeData(
        textTheme: darkTextTheme,
        primaryColor: mainTextColor,
        colorScheme: ColorScheme.fromSwatch().copyWith(secondary: subTextColor, secondaryVariant: whiteColor),
        appBarTheme: const AppBarTheme(
          backgroundColor: mainTextColor,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            unselectedItemColor: Colors.white, backgroundColor: mainTextColor));
  }
}

