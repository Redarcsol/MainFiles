import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Orders extends StatefulWidget {
  const Orders({Key? key}) : super(key: key);

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> with TickerProviderStateMixin {
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
        leading: GestureDetector(
            onTap: () {
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(
              Icons.arrow_back,
              size: 20,
            )),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text(
          'Your Complete eleMED\n'
              'Service History',
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
                                        Center(
                                          child: Text("Appointment Details",
                                              style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26.sp,
                                                  color: Color(0xff2C2C2C))),
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Order ID:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("34934cdfvfr",
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
                                            Text("Date:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("25 Sep, 2022",
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
                                          height: 37.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Amount:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("\$12.00",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff707070))),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              20.0)), //this right here
                                                      child: Container(
                                                        height: 430.h,
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(12.0),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                                () {
                                                                              Navigator.pop(
                                                                                  context);
                                                                            });
                                                                      },
                                                                      child:
                                                                      CircleAvatar(
                                                                        child: Icon(
                                                                            Icons.close),
                                                                        backgroundColor:
                                                                        Color(0xffF4F4F4),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text("Order ID:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 24.sp,
                                                                          color: Color(0xff2C2C2C))),
                                                                  Text("34934cdfvfr",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
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
                                                                  Text("Max lim",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
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
                                                                  Text("be23r400nvH",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text("Mobile No:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 24.sp,
                                                                          color: Color(0xff2C2C2C))),
                                                                  Text("+913234t453525",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text("Location:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 24.sp,
                                                                          color: Color(0xff2C2C2C))),
                                                                  Text("Orange, Cal",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
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
                                                                  Text("Delivered",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff21418A))),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
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
                                        Center(
                                          child: Text("Appointment Details",
                                              style: GoogleFonts.roboto(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 26.sp,
                                                  color: Color(0xff2C2C2C))),
                                        ),
                                        SizedBox(
                                          height: 30.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Order ID:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("34934cdfvfr",
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
                                            Text("Date:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("25 Sep, 2022",
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
                                          height: 37.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text("Amount:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("\$12.00",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 20.sp,
                                                    color: Color(0xff707070))),
                                          ],
                                        ),

                                        SizedBox(
                                          height: 20.h,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              showDialog(
                                                  context: context,
                                                  builder:
                                                      (BuildContext context) {
                                                    return Dialog(
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              20.0)), //this right here
                                                      child: Container(
                                                        height: 430.h,
                                                        child: Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(12.0),
                                                          child: Column(
                                                            mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                            crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                            children: [
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                                  children: [
                                                                    GestureDetector(
                                                                      onTap:
                                                                          () {
                                                                        setState(
                                                                                () {
                                                                              Navigator.pop(
                                                                                  context);
                                                                            });
                                                                      },
                                                                      child:
                                                                      CircleAvatar(
                                                                        child: Icon(
                                                                            Icons.close),
                                                                        backgroundColor:
                                                                        Color(0xffF4F4F4),
                                                                      ),
                                                                    )
                                                                  ],
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text("Order ID:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 24.sp,
                                                                          color: Color(0xff2C2C2C))),
                                                                  Text("34934cdfvfr",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
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
                                                                  Text("Max lim",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
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
                                                                  Text("be23r400nvH",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text("Mobile No:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 24.sp,
                                                                          color: Color(0xff2C2C2C))),
                                                                  Text("+913234t453525",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                MainAxisAlignment.spaceBetween,
                                                                children: [
                                                                  Text("Location:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 24.sp,
                                                                          color: Color(0xff2C2C2C))),
                                                                  Text("Orange, Cal",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
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
                                                                  Text("Delivered",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight.w800,
                                                                          fontSize: 20.sp,
                                                                          color: Color(0xff21418A))),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  });
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
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
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
                        child: Text("History",textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 24.sp,
                            )),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.symmetric(vertical: 10,horizontal: 10)),
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
