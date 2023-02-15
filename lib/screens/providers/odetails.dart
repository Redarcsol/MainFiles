import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Odetails extends StatefulWidget {
  const Odetails({Key? key}) : super(key: key);

  @override
  State<Odetails> createState() => _OdetailsState();
}

class _OdetailsState extends State<Odetails> {
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
        title:  Text("Order Details",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),child: Column(children: [
          Container(
              width: double.infinity,

              decoration:BoxDecoration(
                  color: Color(0xffffffff),
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
                        Text("Mobile No:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("+913234t453525",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:20.sp,
                            color: Color(0xff707070))),
                      ],),
                    SizedBox(height: 25.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Location:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("Orange, Cal",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:20.sp,
                            color: Color(0xff707070))),
                      ],),
                    SizedBox(height: 37.h,),

                  ],
                ),
              )
          ),
          SizedBox(height: 25.h,),
          Container(
            width: double.infinity,

            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Special Instructions:",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff2C2C2C))),
                  SizedBox(height: 15.h,),
                  Container(width: double.infinity,height: 135.h,decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(8.r)),)
                ],
              ),
            ),
          ),


          SizedBox(height: 30.h),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, 'S');
              });
            },
            child: Container(
              width: double.infinity,
              height: 65.h,
              child: Center(
                child: Text("Submit ",style:GoogleFonts.roboto(
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
