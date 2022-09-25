import 'dart:async';

import 'package:aleppian_restaurant/webview_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final spinKit = SpinKitFadingCircle(
    itemBuilder: (context, index) {
      return DecoratedBox(
        decoration: BoxDecoration(
            color:
                index.isEven ? Colors.white : Color.fromARGB(255, 216, 20, 20),
            shape: BoxShape.circle),
      );
    },
  );

  @override
  void initState() {
    super.initState();

    // Timer(const Duration(seconds: 5), () => goToHomeScreen());
  }

  goToHomeScreen() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => const WebViewPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/beef-bread-buns-burger.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.8),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/aleppian_logo.png',
                  width: 200,
                ),
              ),
              SizedBox(
                height: h * 0.05,
              ),
              Center(
                child: Image.asset(
                  'assets/images/aleppian.png',
                  width: 180,
                ),
              ),
              // const Text(
              //   'Aleppian Restaurant',
              //   style: TextStyle(
              //       color: Colors.white,
              //       fontWeight: FontWeight.bold,
              //       fontSize: 20),
              // ),
              SizedBox(
                height: h * 0.1,
              ),
              spinKit,
            ],
          ),
        ],
      ),
    );
  }
}
