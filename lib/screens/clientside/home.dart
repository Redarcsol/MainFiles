import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';

class CHome extends StatefulWidget {
  const CHome({Key? key}) : super(key: key);

  @override
  State<CHome> createState() => _CHomeState();
}

class _CHomeState extends State<CHome> with SingleTickerProviderStateMixin {
  bool? valuefirst = false;
  bool? valuefirst2 = false;
  bool? valuefirst3 = false;
  bool? valuefirst4 = false;
  bool? valuefirst5 = false;
  bool? valuefirst6 = false;
  bool? valuefirst7 = false;
  bool? valuefirst8 = false;
  bool? valuefirst9 = false;
  bool? valuefirst10 = false;

  DateTime today = DateTime.now();

  void _onSelectedday(DateTime day, DateTime focusday) {
    setState(() {
      today = day;
    });
  }

  DateTime _d = DateTime.now();
  TimeOfDay times = TimeOfDay(hour: 8, minute: 34);
  TimeOfDay times2 = TimeOfDay(hour: 8, minute: 34);
  TimeOfDay times3 = TimeOfDay(hour: 8, minute: 34);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void _Showdatepicker() {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime(2000),
            lastDate: DateTime(2050))
        .then((value) {
      setState(() {
        _d = value!;
      });
    });
  }

  void _Showtimepicker1() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        times = value!;
      });
    });
  }

  void _Showtimepicker2() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        times2 = value!;
      });
    });
  }

  void _Showtimepicker3() {
    showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((value) {
      setState(() {
        times3 = value!;
      });
    });
  }

  void _showBooksheet1() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r))),
              child: ListView(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor: Color(0xffF4F4F4),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            child: Center(
                              child: Text("Book Appointment",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24.sp,
                                      color: Color(0xff2C2C2C))),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Date:",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 24.sp,
                                        color: Color(0xff2C2C2C))),
                                Text("23 Sep, 2022",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 16.sp,
                                        color: Color(0xff707070))),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Choose Time:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  child: Center(
                                    child: Text("07:00 PM",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp,
                                            color: Color(0xffFFFFFF))),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color: Color(0xff21418A),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text("07:30 PM",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp,
                                            color: Color(0xff707070))),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      width: 1.w, color: Color(0xff707070)),
                                ),
                              ),
                              Container(
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Center(
                                    child: Text("07:30 PM",
                                        style: GoogleFonts.roboto(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 20.sp,
                                            color: Color(0xff707070))),
                                  ),
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6.r),
                                  color: Colors.transparent,
                                  border: Border.all(
                                      width: 1.w, color: Color(0xff707070)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Call Reasons:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Chest Pain",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst2,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst2 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Wellness Exam",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst3,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst3 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Vaccines",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst4,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst4 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Infections",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst5,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst5 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Sprains",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst6,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst6 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("IV Hydration",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst7,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst7 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Detox",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst8,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst8 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("CoVid Testing",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst9,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst9 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Flu",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst10,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst10 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Nausea and\n Achiness",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              width: double.infinity,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Please add reason for visit',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          Text("Comments:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(height: 10.h),
                          Container(
                            width: double.infinity,
                            color: Color(0xffF4F4F4),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                keyboardType: TextInputType.multiline,
                                maxLines: 4),
                          ),
                          SizedBox(height: 20.h),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    builder: (context) => Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(25.r),
                                                  topRight:
                                                      Radius.circular(25.r))),
                                          child: ListView(
                                            children: [
                                              Container(
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    Navigator.pop(
                                                                        context);
                                                                  });
                                                                },
                                                                child:
                                                                    CircleAvatar(
                                                                  child: Icon(
                                                                      Icons
                                                                          .close),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xffF4F4F4),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          child: Center(
                                                            child: Text(
                                                                "Book Your eleMED "
                                                                "Appointment",
                                                                style: GoogleFonts.roboto(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    fontSize:
                                                                        24.sp,
                                                                    color: Color(
                                                                        0xff2C2C2C))),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 40.h,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      30),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text("Date:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 24
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Text(
                                                                      "23 Sep, 2022",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.w,
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xffE5E5E5)))),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Choose Time:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 24
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Text(
                                                                      "07:00 PM",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.w,
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xffE5E5E5)))),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Text(
                                                                  "Call Reasons:",
                                                                  style: GoogleFonts.roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          24.sp,
                                                                      color: Color(
                                                                          0xff2C2C2C))),
                                                              SizedBox(
                                                                height: 24.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text(
                                                                      "Chest Pain",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text(
                                                                      "Vaccines",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text("Flu",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text(
                                                                      "CoVid Testing",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.w,
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xffE5E5E5)))),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Text("Comments:",
                                                                  style: GoogleFonts.roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          24.sp,
                                                                      color: Color(
                                                                          0xff2C2C2C))),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                color: Color(
                                                                    0xffF4F4F4),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                child: TextField(
                                                                    decoration: InputDecoration(
                                                                        hintText: 'Lorem ipsum dolor sit amet, consectetuer '
                                                                            ' adipiscing elit, sed diam nonummy nibh'
                                                                            ' euismod tincidunt ut',
                                                                        border: InputBorder.none),
                                                                    keyboardType: TextInputType.multiline,
                                                                    maxLines: 4),
                                                              ),
                                                              SizedBox(
                                                                  height: 20.h),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    Navigator.pushNamed(
                                                                        context,
                                                                        'ch');
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 65.h,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xff21418A),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.r)),
                                                                  child: Center(
                                                                    child: Text(
                                                                        "Schedule Appointment",
                                                                        style: GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            fontSize: 24.sp,
                                                                            color: Color(0xffFFFFFF))),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 30.h),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ));
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: 65.h,
                              decoration: BoxDecoration(
                                  color: Color(0xff21418A),
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Text("Review Appointment",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 24.sp,
                                        color: Color(0xffFFFFFF))),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  void _showSchedulesheet2() {
    showModalBottomSheet(
        context: context,
        backgroundColor: Colors.transparent,
        builder: (context) => Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25.r),
                      topRight: Radius.circular(25.r))),
              child: ListView(
                children: [
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: double.infinity,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Navigator.pop(context);
                                    });
                                  },
                                  child: CircleAvatar(
                                    child: Icon(Icons.close),
                                    backgroundColor: Color(0xffF4F4F4),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Container(
                            width: double.infinity,
                            child: Center(
                              child: Text("Schedule Appointment",
                                  style: GoogleFonts.roboto(
                                      fontWeight: FontWeight.w800,
                                      fontSize: 24.sp,
                                      color: Color(0xff2C2C2C))),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text("Date:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w800,
                                  fontSize: 24.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(
                            height: 18,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _Showdatepicker();
                              });
                            },
                            child: Container(
                              color: Color(0xffF4F4F4),
                              width: double.infinity,
                              child: ListTile(
                                leading: Icon(Icons.calendar_month),
                                title: Text(_d.day.toString() +
                                    " - " +
                                    _d.month.toString() +
                                    " - " +
                                    _d.year.toString()),
                                trailing: Icon(Icons.arrow_drop_down),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Choose Time:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _Showtimepicker1();
                                  });
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    child: Center(
                                      child: Text(
                                          times.format(context).toString(),
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.sp,
                                              color: Color(0xffFFFFFF))),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: Color(0xff21418A),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _Showtimepicker2();
                                  });
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Center(
                                      child: Text(
                                          times2.format(context).toString(),
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.sp,
                                              color: Color(0xff707070))),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        width: 1.w, color: Color(0xff707070)),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _Showtimepicker3();
                                  });
                                },
                                child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Center(
                                      child: Text(
                                          times3.format(context).toString(),
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 20.sp,
                                              color: Color(0xff707070))),
                                    ),
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(6.r),
                                    color: Colors.transparent,
                                    border: Border.all(
                                        width: 1.w, color: Color(0xff707070)),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text("Call Reasons:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(
                            height: 25.h,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Chest Pain",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst2,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst2 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Wellness Exam",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst3,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst3 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Vaccines",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst4,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst4 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Infections",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst5,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst5 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Sprains",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst6,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst6 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("IV Hydration",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst7,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst7 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Detox",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst8,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst8 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("CoVid Testing",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst9,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst9 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Flu",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      StatefulBuilder(
                                          builder: (context, state) {
                                        return Checkbox(
                                          checkColor: Colors.white,
                                          activeColor: Colors.black,
                                          value: valuefirst10,
                                          onChanged: (value) {
                                            state(() {
                                              valuefirst10 = value;
                                            });
                                          },
                                        );
                                      }),
                                      Text("Nausea and\n Achiness",
                                          style: GoogleFonts.roboto(
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                              color: Color(0xff707070))),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(height: 20.h),
                          Padding(
                            padding: const EdgeInsets.all(30.0),
                            child: Container(
                              width: double.infinity,
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: 'Please add reason for visit',
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                          Text("Comments:",
                              style: GoogleFonts.roboto(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20.sp,
                                  color: Color(0xff2C2C2C))),
                          SizedBox(height: 10.h),
                          Container(
                            width: double.infinity,
                            color: Color(0xffF4F4F4),
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: TextField(
                                decoration:
                                    InputDecoration(border: InputBorder.none),
                                keyboardType: TextInputType.multiline,
                                maxLines: 4),
                          ),
                          SizedBox(height: 20.h),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showModalBottomSheet(
                                    context: context,
                                    backgroundColor: Colors.transparent,
                                    builder: (context) => Container(
                                          decoration: BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                  topLeft:
                                                      Radius.circular(25.r),
                                                  topRight:
                                                      Radius.circular(25.r))),
                                          child: ListView(
                                            children: [
                                              Container(
                                                child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12.0),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .end,
                                                            children: [
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    Navigator.pop(
                                                                        context);
                                                                  });
                                                                },
                                                                child:
                                                                    CircleAvatar(
                                                                  child: Icon(
                                                                      Icons
                                                                          .close),
                                                                  backgroundColor:
                                                                      Color(
                                                                          0xffF4F4F4),
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 15.h,
                                                        ),
                                                        Container(
                                                          width:
                                                              double.infinity,
                                                          child: Center(
                                                            child: Text(
                                                                "Schedule Appointment",
                                                                style: GoogleFonts.roboto(
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w800,
                                                                    fontSize:
                                                                        24.sp,
                                                                    color: Color(
                                                                        0xff2C2C2C))),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          height: 40.h,
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      30),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text("Date:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 24
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Text(
                                                                      "23 Sep, 2022",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.w,
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xffE5E5E5)))),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Text(
                                                                      "Choose Time:",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w800,
                                                                          fontSize: 24
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff2C2C2C))),
                                                                  Text(
                                                                      "07:00 PM",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.w,
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xffE5E5E5)))),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Text(
                                                                  "Call Reasons:",
                                                                  style: GoogleFonts.roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          24.sp,
                                                                      color: Color(
                                                                          0xff2C2C2C))),
                                                              SizedBox(
                                                                height: 24.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text(
                                                                      "Chest Pain",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text(
                                                                      "Vaccines",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text("Flu",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Container(
                                                                    width: 12.w,
                                                                    height:
                                                                        12.h,
                                                                    decoration: BoxDecoration(
                                                                        shape: BoxShape
                                                                            .circle,
                                                                        color: Color(
                                                                            0xff21418A)),
                                                                  ),
                                                                  SizedBox(
                                                                    width: 10.w,
                                                                  ),
                                                                  Text(
                                                                      "CoVid Testing",
                                                                      style: GoogleFonts.roboto(
                                                                          fontWeight: FontWeight
                                                                              .w600,
                                                                          fontSize: 16
                                                                              .sp,
                                                                          color:
                                                                              Color(0xff707070))),
                                                                ],
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                height: 1.w,
                                                                decoration: BoxDecoration(
                                                                    border: Border(
                                                                        bottom: BorderSide(
                                                                            width:
                                                                                1.w,
                                                                            color: Color(0xffE5E5E5)))),
                                                              ),
                                                              SizedBox(
                                                                height: 30.h,
                                                              ),
                                                              Text("Comments:",
                                                                  style: GoogleFonts.roboto(
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w800,
                                                                      fontSize:
                                                                          24.sp,
                                                                      color: Color(
                                                                          0xff2C2C2C))),
                                                              SizedBox(
                                                                height: 15.h,
                                                              ),
                                                              Container(
                                                                width: double
                                                                    .infinity,
                                                                color: Color(
                                                                    0xffF4F4F4),
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal:
                                                                            20),
                                                                child: TextField(
                                                                    decoration: InputDecoration(
                                                                        hintText: 'Lorem ipsum dolor sit amet, consectetuer '
                                                                            ' adipiscing elit, sed diam nonummy nibh'
                                                                            ' euismod tincidunt ut',
                                                                        border: InputBorder.none),
                                                                    keyboardType: TextInputType.multiline,
                                                                    maxLines: 4),
                                                              ),
                                                              SizedBox(
                                                                  height: 20.h),
                                                              GestureDetector(
                                                                onTap: () {
                                                                  setState(() {
                                                                    //pop start
                                                                    showDialog(
                                                                        context:
                                                                            context,
                                                                        builder:
                                                                            (BuildContext
                                                                                context) {
                                                                          return Dialog(
                                                                            shape:
                                                                                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)), //this right here
                                                                            child:
                                                                                Container(
                                                                              height: 550.h,
                                                                              child: Padding(
                                                                                padding: const EdgeInsets.all(12.0),
                                                                                child: Column(
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                                  children: [
                                                                                    SizedBox(
                                                                                      height: 36.h,
                                                                                    ),
                                                                                    Container(
                                                                                      width: double.infinity,
                                                                                      child: Row(
                                                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                                                        children: [
                                                                                          Icon(Icons.warning, color: Color(0xffD10000), size: 32),
                                                                                          Text("Warning!", style: GoogleFonts.roboto(fontWeight: FontWeight.w800, fontSize: 36.sp, color: Color(0xffD10000))),
                                                                                        ],
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 60.h,
                                                                                    ),
                                                                                    Text(
                                                                                        'If you are experiencing chest pain '
                                                                                        'or think you are having a heart'
                                                                                        'attack or another life threatening'
                                                                                        'experience, call 911 or emergency'
                                                                                        'medical assistance immediately!',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: GoogleFonts.roboto(fontWeight: FontWeight.w800, fontSize: 24.sp, color: Color(0xff000000))),
                                                                                    SizedBox(
                                                                                      height: 60.h,
                                                                                    ),
                                                                                    GestureDetector(
                                                                                      onTap: () {
                                                                                        setState(() {
                                                                                          Navigator.pushNamed(context, 'ch');
                                                                                        });
                                                                                      },
                                                                                      child: Container(
                                                                                        width: double.infinity,
                                                                                        height: 65.h,
                                                                                        decoration: BoxDecoration(color: Color(0xff21418A), borderRadius: BorderRadius.circular(12.r)),
                                                                                        child: Center(
                                                                                          child: Text("Continue", style: GoogleFonts.roboto(fontWeight: FontWeight.w800, fontSize: 24.sp, color: Color(0xffFFFFFF))),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                  ],
                                                                                ),
                                                                              ),
                                                                            ),
                                                                          );
                                                                        });
//pop end
                                                                  });
                                                                },
                                                                child:
                                                                    Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 65.h,
                                                                  decoration: BoxDecoration(
                                                                      color: Color(
                                                                          0xff21418A),
                                                                      borderRadius:
                                                                          BorderRadius.circular(
                                                                              12.r)),
                                                                  child: Center(
                                                                    child: Text(
                                                                        "Schedule Appointment",
                                                                        style: GoogleFonts.roboto(
                                                                            fontWeight:
                                                                                FontWeight.w800,
                                                                            fontSize: 24.sp,
                                                                            color: Color(0xffFFFFFF))),
                                                                  ),
                                                                ),
                                                              ),
                                                              SizedBox(
                                                                  height: 30.h),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    )),
                                              ),
                                            ],
                                          ),
                                        ));
                              });
                            },
                            child: Container(
                              width: double.infinity,
                              height: 65.h,
                              decoration: BoxDecoration(
                                  color: Color(0xff21418A),
                                  borderRadius: BorderRadius.circular(12.r)),
                              child: Center(
                                child: Text("Review Appointment",
                                    style: GoogleFonts.roboto(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 24.sp,
                                        color: Color(0xffFFFFFF))),
                              ),
                            ),
                          ),
                          SizedBox(height: 30.h),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              width: double.infinity,
              height: 200.h,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(width: 1, color: Color(0xffC0C0C0)))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        Navigator.pop(context);
                      });
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 20),
                      child: Icon(
                        Icons.arrow_back,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 30, horizontal: 40),
                    child: Text("Alison Win",
                        style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize: 36.sp,
                            color: Color(0xff2C2C2C))),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 35.h,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xffEBEEF4),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Icon(Icons.home, color: Color(0xff2C2C2C)),
                        SizedBox(width: 15.w),
                        Text("Home",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize: 24.sp,
                                color: Color(0xff2C2C2C))),
                      ],
                    ),
                  )),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'cmed');
                });
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.medical_information, color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Medical Records",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                              color: Color(0xff2C2C2C))),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'cmedhis');
                  });
                },
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.history, color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("History",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                              color: Color(0xff2C2C2C))),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'cpro');
                  });
                },
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.person_add, color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Profile",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                              color: Color(0xff2C2C2C))),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'cc');
                  });
                },
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.chat, color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Messages",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                              color: Color(0xff2C2C2C))),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'Cp2');
                  });
                },
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.payments, color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Payment Details",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                              color: Color(0xff2C2C2C))),
                    ],
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'cl');
                  });
                },
                child: Container(
                    child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(Icons.exit_to_app, color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Sign out",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize: 24.sp,
                              color: Color(0xff2C2C2C))),
                    ],
                  ),
                )),
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.pushNamed(context, 'cn');
                });
              },
              child: Icon(
                Icons.notifications,
              )),
          SizedBox(
            width: 10.w,
          )
        ],
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Home",
            style: GoogleFonts.roboto(
                fontWeight: FontWeight.w500,
                fontSize: 32.sp,
                color: Color(0xff2C2C2C))),
      ),
      body: Stack(
        children: [
          Image.asset(
            'lib/assets/img/bghome.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Container(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      child: Center(
                        child: Text("Book Now",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w800,
                              fontSize: MediaQuery.of(context).size.width < 380
                                  ? 20.sp
                                  : 22.sp,
                            )),
                      ),
                      style: ButtonStyle(
                          fixedSize:
                              MaterialStateProperty.all(Size(170.w, 65.h)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffFFFFFF)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff21418A)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ))),
                      onPressed: () {
                        setState(() {
                          _showBooksheet1();
                        });
                      },
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    ElevatedButton(
                      child: Center(
                        child: Text("Schedule Later",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.bold,
                              fontSize: MediaQuery.of(context).size.width < 380
                                  ? 20.sp
                                  : 22.sp,
                            )),
                      ),
                      style: ButtonStyle(
                          padding: MaterialStateProperty.all(EdgeInsets.all(2)),
                          fixedSize:
                              MaterialStateProperty.all(Size(180.w, 65.h)),
                          foregroundColor: MaterialStateProperty.all<Color>(
                              Color(0xff707070)),
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xffFFFFFF)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ))),
                      onPressed: () {
                        setState(() {
                          _showSchedulesheet2();
                        });
                      },
                    ),
                  ],
                )),
          ),
          Positioned(
            bottom: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                child: Text("Booking and Tracking Your eleMED\n Medi-Van",
                    style: GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize: 24.sp,
                        color: Color(0xff2C2C2C)),
                    textAlign: TextAlign.center),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
