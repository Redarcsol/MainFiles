import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pnotify extends StatefulWidget {
  const Pnotify({Key? key}) : super(key: key);

  @override
  State<Pnotify> createState() => _PnotifyState();
}

class _PnotifyState extends State<Pnotify> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(


          leading: GestureDetector(onTap:(){setState(() {
            Navigator.pop(context);
          });},child: Icon(Icons.arrow_back,size: 20,)),
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          centerTitle: true,
          title:  Text("Notification",style:GoogleFonts.roboto(
              fontWeight: FontWeight.w500,
              fontSize:32.sp,
              color: Color(0xff2C2C2C))),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(children: [
            SizedBox(height: 70.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            Container(
              width: double.infinity,

              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffF4F4F4)),
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your appointment is being reviewed "
                      "by our Medical Dispatcher"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize: 20.sp,
                          color: Color(0xff2C2C2C)), textAlign: TextAlign.start),
                  SizedBox(height: 10.h,),
                  Text("14 Jun, 2022"
                      , style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize: 16.sp,
                          color: Color(0xff7A7A7A)), textAlign: TextAlign.center),
                ],
              ),
            ),
            SizedBox(height: 20.h,),


          ],),
        )
    );
  }
}
