import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Vhome extends StatefulWidget {
  const Vhome({Key? key}) : super(key: key);

  @override
  State<Vhome> createState() => _VhomeState();
}

class _VhomeState extends State<Vhome> with TickerProviderStateMixin {
  Color c1 = Color(0xff21418A);
  Color c2 = Color(0xffF4F4F4);
  Color t1 = Color(0xffFFFFFF);
  Color t2 = Color(0xffC0C0C0);
  final _control = PageController();

  bool isSelect1 = true;
  bool isSelect2 = false;
  bool isSelect3 = false;
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'vprofile');
                });
              },
              child: Icon(
                Icons.person_pin,
                size: 25,
              )),
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'vchat');
                });
              },
              child: Icon(
                Icons.chat,
                size: 25,
              )),
          SizedBox(
            width: 10.w,
          ),
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'vnot');
                });
              },
              child: Icon(
                Icons.notifications,
                size: 25,
              )),
          SizedBox(
            width: 10.w,
          ),
        ],
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          "Home",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize: 26.sp,
              color: Color(0xff2C2C2C)),
          textAlign: TextAlign.center,
        ),
      ),
      body: Stack(
        children: [
          PageView(controller: _control, children: [
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 110.h),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 18,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(
                            children: [
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFEFE7),
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Order ID:",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 18.sp,
                                                      color:
                                                          Color(0xff2C2C2C))),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text("34934cdfvfr",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 18.sp,
                                                      color:
                                                          Color(0xff707070))),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Patient Name:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("Alison",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff707070))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Patient ID:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("Bdf434bbw",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff707070))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 37.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Status:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("Active",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff21418A))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Navigator.pushNamed(
                                                  context, 'vod');
                                            });
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 65.h,
                                            child: Center(
                                              child: Text("View Order Details",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 24.sp,
                                                      color:
                                                          Color(0xffffffff))),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.r),
                                                color: Color(0xff21418A)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
            SingleChildScrollView(
              physics: ScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: 110.h),
                  ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: 18,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 30),
                          child: Column(
                            children: [
                              Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Color(0xffFFEFE7),
                                      borderRadius:
                                          BorderRadius.circular(12.r)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(25.0),
                                    child: Column(
                                      children: [
                                        Container(
                                          width: double.infinity,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text("Order ID:",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 18.sp,
                                                      color:
                                                          Color(0xff2C2C2C))),
                                              SizedBox(
                                                width: 20.w,
                                              ),
                                              Text("34934cdfvfr",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w800,
                                                      fontSize: 18.sp,
                                                      color:
                                                          Color(0xff707070))),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Patient Name:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("Alison",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff707070))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 25.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Patient ID:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("Bdf434bbw",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff707070))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 37.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Status:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("Active",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff21418A))),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              Navigator.pushNamed(
                                                  context, 'vod');
                                            });
                                          },
                                          child: Container(
                                            width: double.infinity,
                                            height: 65.h,
                                            child: Center(
                                              child: Text("View Order Details",
                                                  style: GoogleFonts.roboto(
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      fontSize: 24.sp,
                                                      color:
                                                          Color(0xffffffff))),
                                            ),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(12.r),
                                                color: Color(0xff21418A)),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        );
                      }),
                ],
              ),
            ),
          ]),
          Container(
            color: Colors.white,
            height: 120.h,
            child: Column(
              children: [
                SizedBox(height: 40.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      child: Center(
                        child: Text(
                          "Recent",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 24.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              isSelect2 ? t1 : t2),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isSelect2 ? c1 : c2),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ))),
                      onPressed: () {
                        setState(() {
                          isSelect1 = false;
                          isSelect2 = true;
                          _control.animateToPage(0,
                              duration: Duration(seconds: 1),
                              curve: Curves.bounceOut);
                          isSelect3 = false;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text("History",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp,
                            )),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 20)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              isSelect3 ? t1 : t2),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isSelect3 ? c1 : c2),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ))),
                      onPressed: () {
                        setState(() {
                          isSelect1 = false;
                          isSelect2 = false;
                          isSelect3 = true;
                          _control.animateToPage(1,
                              duration: Duration(seconds: 1),
                              curve: Curves.bounceOut);
                        });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
