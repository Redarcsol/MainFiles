import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfirmPay extends StatefulWidget {
  const ConfirmPay({Key? key}) : super(key: key);

  @override
  State<ConfirmPay> createState() => _ConfirmPayState();
}

class _ConfirmPayState extends State<ConfirmPay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text("Add Your Card",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w800,
            fontSize:24.sp,
            color: Color(0xff000000)),) ,),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(children: [
            Transform.translate(
                offset: Offset(0,-30),
                child: Image.asset('lib/assets/img/cp.png', width: 500.w, height: 500.h)),
            Transform.translate(
              offset: Offset(0,-85),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                 "Careful! You will be charged a "
                 " \$200 non-refundable appointment"
                "fee for eleMED to come right to"
           " your door and take care of you"
           " via a certified Medical Doctor and"
                "Registered Nurse. Once you"
                "schedule your appointment you"
                "will have five minutes to cancel."
                  "We look forward to helping you!",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize:20.sp,
                    color: Color(0xff707070),

                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            Transform.translate(
              offset: Offset(0,-45),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Total Amount:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:32.sp,
                        color: Color(0xff2C2C2C))),
                    Text("\$200",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:32.sp,
                        color: Color(0xff2C2C2C))),
                  ],
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0,-25),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushNamed(context, 'ch');
                    });
                  },
                  child: Container(
                    width: double.infinity,
                    height: 65.h,
                    decoration: BoxDecoration(
                        color: Color(0xff21418A),
                        borderRadius: BorderRadius.circular(12.r)
                    ),
                    child: Center(child: Text("Continue",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize:24.sp,
                        color: Color(0xffFFFFFF))),),),
                ),
              ),
            ),
            SizedBox(height: 30.h),

          ],),
        ),
      ),
    );
  }
}
