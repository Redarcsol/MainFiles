import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cmedhis extends StatefulWidget {
  const Cmedhis({Key? key}) : super(key: key);

  @override
  State<Cmedhis> createState() => _CmedhisState();
}

class _CmedhisState extends State<Cmedhis> with TickerProviderStateMixin {
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
                                            Text("Time:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("07:00 PM",
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
                                            Text("Duration:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("60 Minutes",
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
                                            Transform.translate(
                                              offset: Offset(-35, 0),
                                              child: Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              height: 1.h,
                                              width: 220.w,
                                              color: Colors.black,
                                            ),
                                            Transform.translate(
                                              offset: Offset(35, 0),
                                              child: Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 35.h,
                                        ),
                                        Container(
                                          child: Image.asset(
                                            'lib/assets/img/rectmap.png',
                                            width: 250.w,
                                            height: 130.h,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 35.h,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Transform.translate(
                                              offset: Offset(-35, 0),
                                              child: Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              height: 1.h,
                                              width: 220.w,
                                              color: Colors.black,
                                            ),
                                            Transform.translate(
                                              offset: Offset(35, 0),
                                              child: Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 35.h,
                                        ),
                                        Column(
                                          children: [
                                            Text("Estimated time to join",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 28.sp,
                                                    color: Color(0xff2C2C2C))),
                                            SizedBox(height: 18.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("02:30:45 PM",
                                                    style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20.sp,
                                                        color:
                                                            Color(0xff707070))),
                                                Container(
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.chat,
                                                      color: Color(0xff21418A),
                                                    ),
                                                  ),
                                                  width: 50.w,
                                                  height: 50.h,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffB9CCFA)),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
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
                                            Text("Time:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("07:00 PM",
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
                                            Text("Duration:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("60 Minutes",
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
                                            Transform.translate(
                                              offset: Offset(-35, 0),
                                              child: Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                            ),
                                            Container(
                                              height: 1.h,
                                              width: 220.w,
                                              color: Colors.black,
                                            ),
                                            Transform.translate(
                                              offset: Offset(35, 0),
                                              child: Container(
                                                width: 25.w,
                                                height: 25.h,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white),
                                              ),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 35.h,
                                        ),
                                        Column(
                                          children: [
                                            Text("Estimated time to join",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 28.sp,
                                                    color: Color(0xff2C2C2C))),
                                            SizedBox(height: 18.h),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text("02:30:45 PM",
                                                    style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20.sp,
                                                        color:
                                                            Color(0xff707070))),
                                                Container(
                                                  child: Center(
                                                    child: Icon(
                                                      Icons.chat,
                                                      color: Color(0xff21418A),
                                                    ),
                                                  ),
                                                  width: 50.w,
                                                  height: 50.h,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xffB9CCFA)),
                                                )
                                              ],
                                            ),
                                          ],
                                        )
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
                                          height: 10.h,
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
                                            Text("Time:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("07:00 PM",
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
                                            Text("Duration:",
                                                style: GoogleFonts.roboto(
                                                    fontWeight: FontWeight.w800,
                                                    fontSize: 24.sp,
                                                    color: Color(0xff2C2C2C))),
                                            Text("60 Minutes",
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
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Container(
                                              width: 140.w,
                                              height: 65.h,
                                              child: Center(
                                                child: Text("View Results",
                                                    style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20.sp,
                                                        color:
                                                            Color(0xff7A7A7A))),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  color: Color(0xffFFEFE7),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xff7A7A7A))),
                                            ),
                                            Container(
                                              width: 140.w,
                                              height: 65.h,
                                              child: Center(
                                                child: Text("View Instructions",
                                                    textAlign: TextAlign.center,
                                                    style: GoogleFonts.roboto(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 20.sp,
                                                        color:
                                                            Color(0xff7A7A7A))),
                                              ),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.r),
                                                  color: Color(0xffFFEFE7),
                                                  border: Border.all(
                                                      color:
                                                          Color(0xff7A7A7A))),
                                            ),
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
                                                        height: 450.h,
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
                                                              Text(
                                                                  "Your Prescriptions and OTC "
                                                                  " Medicine Details",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: GoogleFonts.roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                      fontSize:
                                                                          24.sp,
                                                                      color: Color(
                                                                          0xff2C2C2C))),
                                                              SizedBox(
                                                                height: 10.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1,
                                                                color: Color(
                                                                    0xffC0C0C0),
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Medicine",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize: 22
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Text(
                                                                      "Quantity",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w500,
                                                                          fontSize: 22
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 20.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Basic Care Allergy Relief\n"
                                                                      "Diphenhydramine HCl 25 mg,",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 18
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Container(
                                                                    child: Text(
                                                                        "1",
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            fontSize: 20.sp,
                                                                            color: Color(0xff2C2C2C))),
                                                                    width: 60.w,
                                                                    height:
                                                                        30.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12
                                                                                .r),
                                                                        border: Border.all(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xff7A7A7A))),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Basic Care Allergy Relief\n"
                                                                      "Diphenhydramine HCl 25 mg,",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 18
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Container(
                                                                    child: Text(
                                                                        "1",
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            fontSize: 20.sp,
                                                                            color: Color(0xff2C2C2C))),
                                                                    width: 60.w,
                                                                    height:
                                                                        30.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12
                                                                                .r),
                                                                        border: Border.all(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xff7A7A7A))),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Basic Care Allergy Relief\n"
                                                                      "Diphenhydramine HCl 25 mg,",
                                                                      textAlign:
                                                                          TextAlign
                                                                              .start,
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 18
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Container(
                                                                    child: Text(
                                                                        "1",
                                                                        textAlign:
                                                                            TextAlign
                                                                                .center,
                                                                        style: GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            fontSize: 20.sp,
                                                                            color: Color(0xff2C2C2C))),
                                                                    width: 60.w,
                                                                    height:
                                                                        30.h,
                                                                    decoration: BoxDecoration(
                                                                        borderRadius:
                                                                            BorderRadius.circular(12
                                                                                .r),
                                                                        border: Border.all(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xff7A7A7A))),
                                                                  )
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 10.h,
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
                                              child: Text("View Prescriptions",
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
                        child: Text("Recent",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            )),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 30, horizontal: 15)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              isSelect1 ? t1 : t2),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              isSelect1 ? c1 : c2),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ))),
                      onPressed: () {
                        setState(() {
                          isSelect1 = true;
                          _control.animateToPage(0,
                              duration: Duration(seconds: 1),
                              curve: Curves.bounceOut);
                          isSelect2 = false;
                          isSelect3 = false;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text(
                          "Appointment\nSchedule",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.sp,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15)),
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
                          _control.animateToPage(1,
                              duration: Duration(seconds: 1),
                              curve: Curves.bounceOut);
                          isSelect3 = false;
                        });
                      },
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text("Completed\nAppointment",
                            textAlign: TextAlign.center,
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: 18.sp,
                            )),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  vertical: 20, horizontal: 15)),
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
                          _control.animateToPage(2,
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
