import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                left: 80.0, right: 80.0, bottom: 80.0, top: 120.0),
            child: Image.asset('lib/images/fruit.png'),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text(
              'We deliver groceries at your doorstep',
              textAlign: TextAlign.center,
              style: GoogleFonts.workSans(fontSize: 30),
            ),
          ),
          Text(
            'Fresh items every day',
            style: GoogleFonts.workSans(
              fontSize: 18,
              color: Colors.grey[700],
            ),
          ),
          const Spacer(),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context, MaterialPageRoute(
                builder: (context) {
                  return const HomePage();
                },
              ));
            },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightGreen[500],
                  borderRadius: BorderRadius.circular(30)),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Get Started',
                style: GoogleFonts.workSans(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
                // TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
