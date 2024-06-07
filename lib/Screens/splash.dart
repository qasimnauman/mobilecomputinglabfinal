import 'package:coffee_shop/Screens/userauthetication.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Loginsignup()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                return Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/bgimg.png"),
                      fit: BoxFit.cover,
                      alignment: Alignment.bottomLeft
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 80,
              left: MediaQuery.of(context).size.width / 2 - 170,
              right: MediaQuery.of(context).size.width / 2 - 170,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Foodie",
                  style: GoogleFonts.indieFlower(
                    fontSize: 70,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 - 10,
              left: MediaQuery.of(context).size.width / 2 - 170,
              right: MediaQuery.of(context).size.width / 2 - 170,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "Where Food Speaks",
                  style: GoogleFonts.indieFlower(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}