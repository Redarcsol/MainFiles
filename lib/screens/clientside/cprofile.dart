import 'package:elemed/screens/providers/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_switch/flutter_switch.dart';
class Cprofile extends StatefulWidget {
  const Cprofile({Key? key}) : super(key: key);

  @override
  State<Cprofile> createState() => _CprofileState();
}

class _CprofileState extends State<Cprofile> {
  bool status=false;
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
        title:  Text("Edit Profile",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 65.h),
            Padding(padding:EdgeInsets.symmetric(horizontal: 35),

              child: Container(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: double.infinity,height: 1.h,color: Color(0xffC0C0C0),),
                    SizedBox(height: 20.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text("Fingerprint:",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:20.sp,
                          color: Color(0xff000000))),

                        FlutterSwitch(
                          width: 56.0.w,
                          height: 28.h,

                          toggleSize: 5.0,
                          value: status,
                          borderRadius: 30.0,
                          padding: 8.0,
                          showOnOff: false,
                          onToggle: (val) {
                            setState(() {
                              status = val;
                            });
                          },
                        ),


                    ],),
                    SizedBox(height: 20.h,),
                    Container(width: double.infinity,height: 1.h,color: Color(0xffC0C0C0),),
                    SizedBox(height: 20.h,),
                    Text("First Name:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:20.sp,
                        color: Color(0xff000000))),
                    SizedBox(height: 18.h),
                    Container(
                      color: Color(0xffF4F4F4),
                      width: double.infinity,
                      height: 60.h,
                      child: TextField( decoration: InputDecoration(

                        border: InputBorder.none,)),
                    ),
                    SizedBox(height: 30.h),
                    Text("Last Name:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:20.sp,
                        color: Color(0xff000000))),
                    SizedBox(height: 18.h),
                    Container(
                      color: Color(0xffF4F4F4),
                      width: double.infinity,
                      height: 60.h,
                      child: TextField(
                          decoration: InputDecoration(

                            border: InputBorder.none,)
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text("Phone number:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:20.sp,
                        color: Color(0xff000000))),
                    SizedBox(height: 18.h),
                    Container(
                      color: Color(0xffF4F4F4),
                      width: double.infinity,
                      height: 60.h,
                      child: TextField(

                          decoration: InputDecoration(

                            border: InputBorder.none,)
                      ),
                    ),
                    SizedBox(height: 30.h),
                    Text("Email:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:20.sp,
                        color: Color(0xff000000))),
                    SizedBox(height: 18.h),
                    Container(
                      color: Color(0xffF4F4F4),
                      width: double.infinity,
                      height: 60.h,
                      child: TextField(
                          decoration: InputDecoration(

                            border: InputBorder.none,)
                      ),
                    ),
                    SizedBox(height: 30.h),

                    Text("Password:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:20.sp,
                        color: Color(0xff000000))),
                    SizedBox(height: 18.h),
                    Container(
                      color: Color(0xffF4F4F4),
                      width: double.infinity,
                      height: 60.h,
                      child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(

                            border: InputBorder.none,)
                      ),
                    ),
                    SizedBox(height: 30.h),






                    //end fields
                    SizedBox(height: 38.h),
                    GestureDetector(
                      onTap: (){
                        setState(() {
                          Navigator.pushNamed(context, 'phome');
                        });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 65.h,
                        decoration: BoxDecoration(
                            color: Color(0xff21418A),
                            borderRadius: BorderRadius.circular(12.r)
                        ),
                        child: Center(child: Text("Save",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xffFFFFFF))),),),
                    ),
                    SizedBox(height: 30.h),


                  ],
                ),
              ),),



          ],
        ),
      ),
    );
  }
}
