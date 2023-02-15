import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cmedr extends StatefulWidget {
  const Cmedr({Key? key}) : super(key: key);

  @override
  State<Cmedr> createState() => _CmedrState();
}

class _CmedrState extends State<Cmedr> {
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
        title:  Text("Your Medical Records",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body:   Stack(children: [
        Container(
          child: Column(children: [
            SizedBox(height: 60.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

              Column(children: [
                Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff21418A),
                    Color(0xffECF2FF),
                  ],
                )),
                  child: Center(child: Image.asset('lib/assets/img/gr.png',height: 50.h,)),
                ),
                SizedBox(height: 10.h,),
                Text("Reason for Visit",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    fontSize:16.sp,
                    color: Color(0xff000000))),
              ],),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, 'clab');
                },
                child: Column(children: [
                  Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [
                      Color(0xff21418A),
                      Color(0xffECF2FF),
                    ],
                  )),
                    child: Center(child: Image.asset('lib/assets/img/gr2.png',height: 50.h,)),
                  ),
                  SizedBox(height: 10.h,),
                  Text("Lab Results",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w800,
                      fontSize:16.sp,
                      color: Color(0xff000000))),
                ],),
              ),
              Column(children: [
                Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff21418A),
                    Color(0xffECF2FF),
                  ],
                )),
                  child: Center(child: Image.asset('lib/assets/img/gr3.png',height: 50.h,)),
                ),
                SizedBox(height: 10.h,),
                Text("Health Summary",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    fontSize:16.sp,
                    color: Color(0xff000000))),
              ],),
            ],),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 18.w,),
                GestureDetector(
                  onTap: (){
                      Navigator.pushNamed(context, 'chealth');
                  },
                  child: Column(children: [
                    Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Color(0xff21418A),
                        Color(0xffECF2FF),
                      ],
                    )),
                      child: Center(child: Image.asset('lib/assets/img/gr4.png',height: 50.h,)),
                    ),
                    SizedBox(height: 10.h,),
                    Text("Health Summary",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize:16.sp,
                        color: Color(0xff000000))),
                  ],),
                ),

              ],),
          ],),
        ),

      ],),
    );
  }
}
