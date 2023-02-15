import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Vodetails extends StatefulWidget {
  const Vodetails({Key? key}) : super(key: key);

  @override
  State<Vodetails> createState() => _VodetailsState();
}

class _VodetailsState extends State<Vodetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
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
                        Text("Order ID:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("34934cdfvfr",style:GoogleFonts.roboto(
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
                  Container(
                    width: double.infinity,
                    color: Color(0xffF4F4F4),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                        decoration: InputDecoration(

                        border: InputBorder.none),
                        keyboardType: TextInputType.multiline,
                        maxLines: 4


                    ),),],
              ),
            ),
          ),


          SizedBox(height: 30.h),
          Container(
            width: double.infinity,
            height: 65.h,
            child: Center(
              child: Text("Chat with Patient",style:GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize:24.sp,
                  color: Color(0xff7A7A7A))),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Colors.white,border: Border.all(color: Color(0xff7A7A7A))),),
          SizedBox(height: 10.h),
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
                child: Text("Chat with Dispatcher",style:GoogleFonts.roboto(
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
