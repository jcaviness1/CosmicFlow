import 'package:flutter/material.dart';
import 'package:hw4/services/auth/authgate.dart';
import 'package:moon_icons/moon_icons.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const AuthGate()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              MoonIcons.other_moon_16_light,
              color: Colors.white,
              size: 100,
            ),
            SizedBox(height: 20),
            Text(
              'CosmicFlow\n Chat With Your Friends!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                ),
            ),
          ],
        ),
      ),
    );
  }
}
