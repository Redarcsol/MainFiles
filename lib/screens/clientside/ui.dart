import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Testui extends StatefulWidget {
  @override
  State<Testui> createState() => _TestuiState();
}

class _TestuiState extends State<Testui> with TickerProviderStateMixin {
  final _control=PageController();
  bool onLastpage=false;
  bool _isTop = false;
  late Animation<double> anim;
  late Animation<double> anim2;
  late AnimationController _animec;
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 1), () {
      setState(() {
        _isTop = !_isTop;

      });// Prints aft
      // er 1 second.
    });
    _animec = AnimationController(
      duration: const Duration(seconds: 4),
      vsync: this,
    );
    anim = Tween<double>(begin: 0.0, end: 1.0).animate(_animec)
      ..addListener(() {
        setState(() {});
      });
    anim2 = Tween<double>(begin: 1.0, end: 0.0).animate(_animec)
      ..addListener(() {
        setState(() {});
      });
    _animec.forward();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _animec.dispose();
  }
  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return SafeArea(
      child: Scaffold(

        body:Stack(
          children: [

            PageView(
                controller: _control,
                onPageChanged: (index){
                  setState(() {
                    onLastpage=(index==2);
                  });
                },
                children: [
                  Container(

                    width: double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/assets/img/img_tab_1.png', width: 400.w, height: 400.h),
                        SizedBox(height: 10.h),
                        Text(
                          "Account Creation",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize:24.sp,
                              color: Color(0xff2C2C2C)),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Setting up your eleMED account is simple. Set it up now so you'll be ready to call our state-of-the-art Medi-Van to your door with just a few taps on your eleMED app!",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize:20.sp,
                              color: Color(0xff707070),

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),),
                  Container(

                    width: double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('lib/assets/img/img2.png', width: 326.w, height: 326.h),
                        SizedBox(height: 10.h),
                        Text(
                          "Appointment Booking",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize:24.sp,
                              color: Color(0xff2C2C2C)),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding:const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Once you're fully registered and have saved your Credit Card, you can make an appointment with just one tap! eleMED makes it easy to book an appointment now or schedule for the future at your convenience, anywhere you need us",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize:20.sp,
                              color: Color(0xff707070),

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),),
                  Container(

                    width: double.infinity,

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 30.h),
                        Image.asset('lib/assets/img/img3.png', width: 306.w, height: 306.h),
                        SizedBox(height: 10.h),
                        Text(
                          "Track and Chat",
                          style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w500,
                              fontSize:24.sp,
                              color: Color(0xff2C2C2C)),
                        ),
                        SizedBox(height: 20.h),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text(
                            "Once you've booked an appointment you can easily see exactly where your eleMED medi-van is and what the ETA is. You can also send a chat message to your hands-on medical provider with any special requests or questions. And you can chat with your Doctor after your appointment to follow up and let us know how you're doing!",
                            style: GoogleFonts.roboto(
                              fontWeight: FontWeight.w400,
                              fontSize:20.sp,
                              color: Color(0xff424242),

                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),),


                ]),


            Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 45.h,width: double.infinity),
                AnimatedOpacity(
                  duration: Duration(milliseconds: 3500),
                  opacity: anim.value,
                  child: Container(

                    width: double.infinity,
                    child: Image.asset('lib/assets/img/logo.png', width: 279.w, height: 80.h),),
                ),


              ],
            ),
        AnimatedPositioned(
          duration: Duration(milliseconds: 900),
          top: _isTop ? 0 :200,
          left: 60,
          child: AnimatedOpacity(
            duration: Duration(milliseconds: 300),
            opacity: anim2.value,
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                SizedBox(height: 45.h,),
                Image.asset('lib/assets/img/logo.png', width: 279.w, height: 80.h),


              ],
            ),
          ),
        ),
            Positioned(
              bottom: 20,
              left: 30,
              child: onLastpage ?GestureDetector(
                onTap: () {
                  setState(() {
                    Navigator.pushNamed(context, 'cr');

                  });
                },
                child: Container(
                  width:358.w,
                  height: 59.h,
                  child: Center(
                    child: Text(
                      "Get Started",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:20.sp,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff21418A),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              ) :GestureDetector(
                onTap: () {
                  setState(() {
                    _control.nextPage(duration: Duration(milliseconds: 200), curve: Curves.linear);

                  });
                },
                child: Container(
                  width:358.w,
                  height: 59.h,
                  child: Center(
                    child: Text(
                      "Continue",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:20.sp,
                          color: Color(0xffFFFFFF)),
                    ),
                  ),
                  decoration: BoxDecoration(
                      color: Color(0xff21418A),
                      borderRadius: BorderRadius.circular(12.r)),
                ),
              ),
            ),

          ],
        ) ,
      ),
    );
  }
}
