import 'package:elemed/screens/providers/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Plogin extends StatefulWidget {
  const Plogin({Key? key}) : super(key: key);

  @override
  State<Plogin> createState() => _PloginState();
}

class _PloginState extends State<Plogin> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Align(
                alignment: FractionalOffset.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("If you want to Continue as a Van Driver: ",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp,
                            color: Color(0xff7A7A7A))),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, 'vlog');
                        });
                      },
                      child: Text("Click here",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 16.sp,
                              color: Color(0xff21418A))),
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Column(
                      children: [
                        SizedBox(height: 60.h, width: double.infinity),
                        Container(
                            width: double.infinity,
                            child: Image.asset('lib/assets/img/logo.png',
                                width: 220.w, height: 80.h)),
                        SizedBox(height: 35.h, width: double.infinity),
                        Text(
                          "TeleMedicine Doctor Portal",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w800,
                              fontSize: 24.sp,
                              color: Color(0xff000000)),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 65.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 35),
                    child: Container(
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Email:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff000000))),
                          SizedBox(height: 18.h),
                          Container(
                            color: Color(0xffF4F4F4),
                            width: double.infinity,
                            height: 60.h,
                            child: TextField(
                                decoration: InputDecoration(
                              border: InputBorder.none,
                            )),
                          ),
                          SizedBox(height: 30.h),
                          Text("Password:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff000000))),
                          SizedBox(height: 18.h),
                          Container(
                            color: Color(0xffF4F4F4),
                            width: double.infinity,
                            height: 60.h,
                            child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                )),
                          ),
                          SizedBox(height: 38.h),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                Navigator.pushNamed(context, 'phome');
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: 65.h,
                              decoration: BoxDecoration(
                                  color: Color(0xff21418A),
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Text("Login",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 24.sp,
                                        color: Color(0xffFFFFFF))),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          Center(
                            child: Icon(Icons.fingerprint,
                                size: 80, color: Color(0xff21418A)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
