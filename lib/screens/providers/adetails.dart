import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Adetails extends StatefulWidget {
  const Adetails({Key? key}) : super(key: key);

  @override
  State<Adetails> createState() => _AdetailsState();
}

class _AdetailsState extends State<Adetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        leading: GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pop(context);
              });
            },
            child: Icon(Icons.arrow_back,size: 30)),
        title:  Text("Appointment Details",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),child: Column(children: [
          Container(
              width: double.infinity,

              decoration:BoxDecoration(
                  color: Color(0xffFFEFE7),
                  borderRadius: BorderRadius.circular(12.r)
              ),
              child:Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Patient Name:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("Max lim",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:20.sp,
                            color: Color(0xff707070))),
                      ],),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Patient ID:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("be23r400nvH",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:20.sp,
                            color: Color(0xff707070))),
                      ],),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Time:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("60 Minutes",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:20.sp,
                            color: Color(0xff707070))),
                      ],),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Status:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("Active",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:20.sp,
                            color: Color(0xff21418A))),
                      ],),
                    SizedBox(height: 37.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.translate(
                          offset: Offset(-35,0),
                          child: Container(
                            width:25.w,
                            height:25.h,

                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                        ),Container(height: 1.h,width: 220.w, color: Colors.black,),
                        Transform.translate(
                          offset: Offset(35,0),
                          child: Container(
                            width:25.w,
                            height:25.h,

                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                        ),
                      ],),
                    SizedBox(height: 35.h,),
                    Column(
                      children: [
                        Text("Join Call",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:28.sp,
                            color: Color(0xff2C2C2C))),
                        SizedBox(height: 18.h),
                        Text("https:sajhSJbd434/wefefvwe."
                            " com",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w500,
                            fontSize:20.sp,
                            color: Color(0xff707070))),
                      ],
                    )
                  ],
                ),
              )
          ),
          SizedBox(height: 25.h,),
          Container(
            width: double.infinity,
            height: 65.h,
            child: Center(
              child: Text("Request Patient Data",style:GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize:24.sp,
                  color: Color(0xff7A7A7A))),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Colors.white,border: Border.all(color: Color(0xff7A7A7A))),),
          SizedBox(height: 15.h),
          Container(
            width: double.infinity,
            height: 65.h,
            child: Center(
              child: Text("Submit Reports",style:GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize:24.sp,
                  color: Color(0xff7A7A7A))),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Colors.white,border: Border.all(color: Color(0xff7A7A7A))),),
          SizedBox(height: 15.h),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, 'od');
              });
            },
            child: Container(
              width: double.infinity,
              height: 65.h,
              child: Center(
                child: Text("Submit Order",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize:24.sp,
                    color: Color(0xffffffff))),
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xff21418A)),),
          )
        ],),),
      ),
    );
  }
}
