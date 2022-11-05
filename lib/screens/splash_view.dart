import 'dart:async';
import 'package:drawer_app/screens/details_screen.dart';
import 'package:drawer_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class Splashview extends StatefulWidget {
  const Splashview({Key? key}) : super(key: key);

  @override
  State<Splashview> createState() => _SplashviewState();
}

class _SplashviewState extends State<Splashview> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 3),
        ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Login()))
    );
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: FlutterLogo(size: MediaQuery.of(context).size.height,),
    );
  }
}
