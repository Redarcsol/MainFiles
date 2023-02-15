import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class Onboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Set the fit size (Find your UI design, look at the dimensions of the device screen and fill it in,unit in dp)
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          home: Onboardui(),
        );
      },
    );
  }
}

class Onboardui extends StatefulWidget {
  @override
  State<Onboardui> createState() => _OnboarduiState();
}

class _OnboarduiState extends State<Onboardui> {
  final _control=PageController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
            SizedBox(height: 60.h),
            Center(child: Image.asset('lib/assets/img/logo.png', width: 279.w, height: 96.h)),
            SizedBox(height: 30.h),
              Padding(
                padding: const EdgeInsets.all(50.0),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      _control.nextPage(duration: Duration(milliseconds: 200), curve: Curves.linear);
                    });
                  },
                  child: Container(
                    width:358.w,
                    height: 59.h,
                    child: Text(
                      "Continue",
                      style: GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:20.sp,
                          color: Color(0xffFFFFFF)),
                    ),
                    decoration: BoxDecoration(
                        color: Color(0xff21418A),
                        borderRadius: BorderRadius.circular(12.r)),
                  ),
                ),
              ),
             ],),
          Padding(
            padding: const EdgeInsets.only(top: 60),
            child: PageView(
              controller: _control,
              children: [
                Container(
                    width: double.infinity,
                    child: Column(children: [
                      Container(
                          width:400.w,
                          height: 400.h,
                          child: Image.asset('lib/assets/img/intro1.png')),
                      Center(
                          child: Text(
                            "Account Creation",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize:24.sp,
                                color: Color(0xff2C2C2C)),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
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
                      SizedBox(height: 40.h),

                    ],),
                    color: Colors.transparent),
                Container(
                    width: double.infinity,
                    child: Column(children: [
                      Container(
                          width:400.w,
                          height: 400.h,
                          child: Image.asset('lib/assets/img/intro2.png')),
                      Center(
                          child: Text(
                            "Appointment Booking",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize:24.sp,
                                color: Color(0xff2C2C2C)),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
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
                      SizedBox(height: 40.h),

                    ],),
                    color: Colors.transparent),
                Container(
                    width: double.infinity,
                    child: Column(children: [
                      Container(
                          width:400.w,
                          height: 400.h,
                          child: Image.asset('lib/assets/img/intro3.png')),
                      Center(
                          child: Text(
                            "Track and Chat",
                            style: GoogleFonts.roboto(
                                fontWeight: FontWeight.w500,
                                fontSize:24.sp,
                                color: Color(0xff2C2C2C)),
                          )),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                        child: Text(
                          "Once you've booked an appointment youcan easily see exactly where your eleMED medi-van is and what the ETA is. You can also send a chat message to your hands-on medical provider with any special requests or questions. And you can chat with your Doctor after your appointment to follow up and let us know how you're doing!",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w400,
                            fontSize:24.sp,
                            color: Color(0xff707070),

                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 40.h),

                    ],),
                    color: Colors.transparent),
              ],
            ),
          ),


        ],
      ),
    ));
  }
}
