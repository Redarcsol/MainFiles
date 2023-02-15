import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NCpayments extends StatefulWidget {
  const NCpayments({Key? key}) : super(key: key);

  @override
  State<NCpayments> createState() => _NCpaymentsState();
}

class _NCpaymentsState extends State<NCpayments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: GestureDetector(onTap:(){setState(() {
          Navigator.pop(context);
        });},child: Icon(Icons.arrow_back,size: 20,)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        title: Text("Payment",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w800,
            fontSize:24.sp,
            color: Color(0xff000000)),) ,),
      body: Stack(
        children: [
          Positioned(
            bottom: 40,
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'ch');
                });
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  width: 350.w,
                  height: 65.h,
                  decoration: BoxDecoration(
                      color: Color(0xff21418A),
                      borderRadius: BorderRadius.circular(12.r)
                  ),
                  child: Center(child: Text("Add Card",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w800,
                      fontSize:24.sp,
                      color: Color(0xffFFFFFF))),),),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 60),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Color(0xffE5E5E5),width: 1)),
                  ),
                  width: double.infinity,child: ListTile(
                  title:Text("xxxx32323",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xff7A7A7A)),)  ,
                  subtitle:Text("Visa",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff7A7A7A)),),
                  trailing:Text("Expire 12/25",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:14.sp,
                      color: Color(0xff7A7A7A)),),
                ),),
                Container(
                  decoration: BoxDecoration(
                    border: Border(bottom: BorderSide(color: Color(0xffE5E5E5),width: 1)),
                  ),
                  width: double.infinity,child: ListTile(
                  title:Text("xxxx7423",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xff7A7A7A)),)  ,
                  subtitle:Text("Card",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w600,
                      fontSize:24.sp,
                      color: Color(0xff7A7A7A)),),
                  trailing:Text("Expire 12/25",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:14.sp,
                      color: Color(0xff7A7A7A)),),
                ),)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
