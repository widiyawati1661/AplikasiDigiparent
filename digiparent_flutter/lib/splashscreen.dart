import 'package:flutter/material.dart';
import 'dart:async';
import 'package:digiparent_flutter/login.dart';

class HalamanSplashScreen extends StatefulWidget {
  //const HalamanSplashScreen({ Key? key }) : super(key: key);
  @override
  _HalamanSplashScreenState createState() => _HalamanSplashScreenState();
}

class _HalamanSplashScreenState extends State<HalamanSplashScreen> {
  //panggik method
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  //buat timer
  startSplashScreen() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, () {
      //replacement() digunakan supaya tidak bisa kembali ke halaman ini
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) {
        //saat timer selesai berjalan tampilkan HalamanLogin.dart
        return HalamanLogin();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
            child: Image.asset(
          "asset/images/logo_digiparent.jpg",
          width: 200,
          height: 100,
        )));
  }
}
