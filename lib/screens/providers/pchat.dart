import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Pchat extends StatefulWidget {
  const Pchat({Key? key}) : super(key: key);

  @override
  State<Pchat> createState() => _PchatState();
}

class _PchatState extends State<Pchat> {
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
          title:  Text("Patient-Doctor Chats\n"
            "Post Visit Consultations",style:GoogleFonts.roboto(
              fontWeight: FontWeight.w800,
              fontSize:24.sp,
              color: Color(0xff2C2C2C))),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: ListView(children: [
            SizedBox(height: 70.h,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'pchatin');

                });

              },
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffFFEFE7)),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    radius: 70.r,
                    child: Transform.translate(
                        offset: Offset(20,-20),
                        child: Container(width: 16.w,height: 16.h,decoration: BoxDecoration(shape:BoxShape.circle,color: Color(0xff54EEB4)),)),
                  ),
                  title: Text("Dr.faiz",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xff000000))),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cardiologist",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 10.w,),
                      Text("Hi. Nice to meet you...",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                    ],),
                  trailing: Column(

                    children: [
                      Text("12:35 am",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 8.h,),
                      Container(width: 10.w,height: 10.h,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff21418A)),)
                    ],),

                ),
              ),
            ),
            SizedBox(height: 20.h,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'pchatin');

                });

              },
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffFFEFE7)),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    radius: 70.r,
                    child: Transform.translate(
                        offset: Offset(20,-20),
                        child: Container(width: 16.w,height: 16.h,decoration: BoxDecoration(shape:BoxShape.circle,color: Color(0xff54EEB4)),)),
                  ),
                  title: Text("Dr.faiz",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xff000000))),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cardiologist",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 10.w,),
                      Text("Hi. Nice to meet you...",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                    ],),
                  trailing: Column(

                    children: [
                      Text("12:35 am",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 8.h,),
                      Container(width: 10.w,height: 10.h,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff21418A)),)
                    ],),

                ),
              ),
            ),
            SizedBox(height: 20.h,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'pchatin');

                });

              },
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffFFEFE7)),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    radius: 70.r,
                    child: Transform.translate(
                        offset: Offset(20,-20),
                        child: Container(width: 16.w,height: 16.h,decoration: BoxDecoration(shape:BoxShape.circle,color: Color(0xff54EEB4)),)),
                  ),
                  title: Text("Dr.faiz",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xff000000))),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cardiologist",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 10.w,),
                      Text("Hi. Nice to meet you...",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                    ],),
                  trailing: Column(

                    children: [
                      Text("12:35 am",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 8.h,),
                      Container(width: 10.w,height: 10.h,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff21418A)),)
                    ],),

                ),
              ),
            ),
            SizedBox(height: 20.h,),
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'pchatin');

                });

              },
              child: Container(
                width: double.infinity,

                decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xffFFEFE7)),
                padding: EdgeInsets.symmetric(vertical: 20),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
                    radius: 70.r,
                    child: Transform.translate(
                        offset: Offset(20,-20),
                        child: Container(width: 16.w,height: 16.h,decoration: BoxDecoration(shape:BoxShape.circle,color: Color(0xff54EEB4)),)),
                  ),
                  title: Text("Dr.faiz",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xff000000))),
                  subtitle:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Cardiologist",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 10.w,),
                      Text("Hi. Nice to meet you...",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                    ],),
                  trailing: Column(

                    children: [
                      Text("12:35 am",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w400,
                          fontSize:15.sp,
                          color: Color(0xff7A7A7A))),
                      SizedBox(height: 8.h,),
                      Container(width: 10.w,height: 10.h,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xff21418A)),)
                    ],),

                ),
              ),
            ),
            SizedBox(height: 20.h,),



          ],),
        )
    );
  }
}
