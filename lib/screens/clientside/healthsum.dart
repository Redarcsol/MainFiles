import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Chealth extends StatefulWidget {
  const Chealth({Key? key}) : super(key: key);

  @override
  State<Chealth> createState() => _ChealthState();
}

class _ChealthState extends State<Chealth> {
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
        title:  Text("Health Summary",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body:   Stack(children: [
        Container(
          child: Column(children: [
            SizedBox(height: 80.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff21418A),
                    Color(0xffECF2FF),
                  ],
                )),
                  child: Center(child: Image.asset('lib/assets/img/Vector.png',height: 50.h,)),
                ),
                Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff21418A),
                    Color(0xffECF2FF),
                  ],
                )),
                  child: Center(child: Image.asset('lib/assets/img/Vector.png',height: 50.h,)),
                ),
                Container(width: 120.w,height: 120.h,decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xff21418A),
                    Color(0xffECF2FF),
                  ],
                )),
                  child: Center(child: Image.asset('lib/assets/img/Vector.png',height: 50.h,)),
                ),
              ],),

          ],),
        ),

      ],),
    );
  }
}
