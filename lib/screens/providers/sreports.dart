import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Sdetails extends StatefulWidget {
  const Sdetails({Key? key}) : super(key: key);

  @override
  State<Sdetails> createState() => _SdetailsState();
}

class _SdetailsState extends State<Sdetails> {
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
        title:  Text("Submit Reports",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.symmetric(horizontal: 30,vertical: 50),child: Column(children: [

          SizedBox(height: 25.h,),
          Container(
            width: double.infinity,

            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Results:",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff2C2C2C))),
                  SizedBox(height: 15.h,),
                  Container(width: double.infinity,height: 135.h,decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(8.r)),)
                ],
              ),
            ),
          ),
          SizedBox(height: 18.h,),
          Container(
            width: double.infinity,

            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Discharge Instructions:",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff2C2C2C))),
                  SizedBox(height: 15.h,),
                  Container(width: double.infinity,height: 135.h,decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(8.r)),)
                ],
              ),
            ),
          ),
          SizedBox(height: 18.h,),
          Container(
            width: double.infinity,

            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Medicines:",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff2C2C2C))),
                  SizedBox(height: 15.h,),
                  Container(
                    child: TextField(

                      decoration: InputDecoration(

      labelText: '  Enter Medicine Name',
                        border: InputBorder.none,)),
                    width: double.infinity,decoration: BoxDecoration(color: Color(0xffF4F4F4),borderRadius: BorderRadius.circular(8.r)),)
                ],
              ),
            ),
          ),
          SizedBox(height: 18.h,),
          Container(
            width: double.infinity,

            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Select Quantity:",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff2C2C2C))),
               Row(
                 children: [
                   Container(decoration:BoxDecoration(color: Color(0xff21418A), borderRadius: BorderRadius.only(topLeft:Radius.circular(6.r),bottomLeft:Radius.circular(6.r) ),) ,width: 35.w,height: 35.h,child: Center(child: Icon(Icons.add,color: Colors.white,)),),

                   Container(decoration:BoxDecoration(color: Color(0xffF4F4F4), borderRadius: BorderRadius.only(topLeft:Radius.circular(6.r),bottomLeft:Radius.circular(6.r) ),) ,width: 35.w,height: 35.h,child: Center(child: Text("1")),),

                   Container(decoration:BoxDecoration(color: Color(0xff21418A), borderRadius: BorderRadius.only(topRight:Radius.circular(6.r),bottomRight:Radius.circular(6.r) ),) ,width: 35.w,height: 35.h,child: Center(child: Icon(Icons.remove,color: Colors.white,)),)

                 ],
               )
                ],
              ),
            ),
          ),
          SizedBox(height: 25.h,),
          Container(
            width: double.infinity,
            height: 45.h,
            child: Center(
              child: Text("Enter Medicine Total Price",style:GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize:24.sp,
                  color: Color(0xff7A7A7A))),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Colors.white,border: Border.all(color: Color(0xff7A7A7A))),),

          SizedBox(height: 45.h),
          Container(
            width: double.infinity,
            height: 65.h,
            child: Center(
              child: Text("Submit ",style:GoogleFonts.roboto(
                  fontWeight: FontWeight.w500,
                  fontSize:24.sp,
                  color: Color(0xffffffff))),
            ),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12.r),color: Color(0xff21418A)),)
        ],),),
      ),
    );
  }
}
