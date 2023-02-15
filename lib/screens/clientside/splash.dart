import 'package:elemed/screens/clientside/onboard.dart';
import 'package:elemed/screens/clientside/ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:page_transition/page_transition.dart';

class Splash extends StatefulWidget {

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 7), () {
      setState(() {
        Navigator.push(
          context,
          PageTransition(
            curve: Curves.linear,
            type: PageTransitionType.rightToLeft,
            child: Testui(),
          ),
        );
      });// Prints after 1 second.
    });
  }
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(top: 0),
            child: Container(
                width: double.infinity,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                  Text(
                    "Welcome To",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize: 36.sp,
                        color: Color(0xff2C2C2C)),
                  ),
                  SizedBox(height: 46.h),
                  Image.asset('lib/assets/img/logo.png', width: 279.w, height: 96.h),
                  SizedBox(height: 60.h),


                ])),
          )),
    );
  }
}
