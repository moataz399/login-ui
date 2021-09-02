// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/Login_Screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            unselectedItemColor: Colors.grey,
            backgroundColor: Colors.black26,
            elevation: 20,
            type: BottomNavigationBarType.fixed),
        appBarTheme: AppBarTheme(
            backwardsCompatibility: false,
            backgroundColor: Colors.black26,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.grey,
              statusBarBrightness: Brightness.light,
            ),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.white,
            ),
            iconTheme: IconThemeData(color: Colors.white)),
        scaffoldBackgroundColor: Colors.black26,
        textTheme: TextTheme(
            bodyText1: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white)),
      ),
      theme: ThemeData(
          appBarTheme: AppBarTheme(
              elevation: 0.0,
              backwardsCompatibility: false,
              backgroundColor: Colors.white,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.black,
                statusBarBrightness: Brightness.dark,
              ),
              titleTextStyle: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.black,
              ),
              iconTheme: IconThemeData(color: Colors.black)),
          textTheme: TextTheme(
              bodyText1: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87)),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
              //   backgroundColor: Colors.black26,
              elevation: 20,
              type: BottomNavigationBarType.fixed)),
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Login(),
      ),
    );
  }
}
