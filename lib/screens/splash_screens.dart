import 'dart:async';
import 'package:carihotel_app/models/auth_services.dart';
import 'package:carihotel_app/models/wrapper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startSplashScreen();
  }

  startSplashScreen() async {
    var duration = const Duration(seconds: 5);
    return Timer(
      duration,
      () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => Wrapper(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.firebaseUserStream,
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(top: 195),
          child: Center(
            child: Column(
              children: [
                SvgPicture.asset('assets/images/logo.svg'),
                Spacer(),
                SvgPicture.asset('assets/images/splash_image.svg')
              ],
            ),
          ),
        ),
      ),
    );
  }
}
