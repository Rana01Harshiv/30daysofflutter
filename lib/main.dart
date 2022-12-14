import 'package:drawer_app/screens/details_screen.dart';
import 'package:drawer_app/screens/home_screen.dart';
import 'package:drawer_app/screens/splash_view.dart';
import 'package:drawer_app/uties/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'Flutter Demo',
        themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,

        primaryTextTheme: GoogleFonts.latoTextTheme()
      ),
      initialRoute: "/",
      routes: {
            "/" : (context) => Splashview(),
            MyRoutes.homeRoute:(context) => Homescreen(),
        MyRoutes.splashRoute:(context) => Splashview(),
        MyRoutes.loginRoute:(context) => Login(),


      },
     // home: const Splashview()
    );
  }
}
