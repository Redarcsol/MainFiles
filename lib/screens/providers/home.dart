import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:table_calendar/table_calendar.dart';
class Phome extends StatefulWidget {
  const Phome({Key? key}) : super(key: key);

  @override
  State<Phome> createState() => _PhomeState();
}

class _PhomeState extends State<Phome> {
  DateTime today=DateTime.now();
  void _onSelectedday(DateTime day, DateTime focusday)
  {
    setState(() {
      today = day;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(

        child: ListView(children: [
        Container(width: double.infinity,
          height: 200.h,
         decoration: BoxDecoration(

             border: Border(bottom: BorderSide(width: 1,color: Color(0xffC0C0C0)))),
child:Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    GestureDetector(
      onTap: (){
        setState(() {
          Navigator.pop(context);
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        child: Icon(Icons.arrow_back,size: 30,),
      ),
    ),
        Padding(
      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 40),

      child:   Text("Alison Win",style:GoogleFonts.roboto(
          fontWeight: FontWeight.w500,
          fontSize:36.sp,
          color: Color(0xff2C2C2C))),
    ),
  ],
) ,
        ),
          SizedBox(height: 35.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child: Container(
            decoration: BoxDecoration(color: Color(0xffEBEEF4),borderRadius:BorderRadius.circular(10.r)),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(children: [
                Icon(Icons.home,color: Color(0xff2C2C2C)),
                SizedBox(width: 15.w),
                Text("Home",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize:24.sp,
                    color: Color(0xff2C2C2C))),
              ],),
            )
          ),
        ),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, 'ppro');
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
              child: Container(
                 child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Icon(Icons.person_add,color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Profile",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:24.sp,
                          color: Color(0xff2C2C2C))),
                    ],),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'pchat');
                });
              },
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Icon(Icons.chat,color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Messages",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:24.sp,
                          color: Color(0xff2C2C2C))),
                    ],),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'porder');
                });
              },
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Icon(Icons.shopping_cart,color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Orders",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:24.sp,
                          color: Color(0xff2C2C2C))),
                    ],),
                  )
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
            child: GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.pushNamed(context, 'plogin');
                });
              },
              child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(children: [
                      Icon(Icons.exit_to_app,color: Color(0xff2C2C2C)),
                      SizedBox(width: 15.w),
                      Text("Log out",style:GoogleFonts.roboto(
                          fontWeight: FontWeight.w500,
                          fontSize:24.sp,
                          color: Color(0xff2C2C2C))),
                    ],),
                  )
              ),
            ),
          ),
      ],),),
      appBar: AppBar(
        actions: [GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, 'pnotification');
              });
            },
            child: Icon(Icons.notifications)),SizedBox(width: 10.w)],

        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle:true ,
        title:  Text("Home",style:GoogleFonts.roboto(
            fontWeight: FontWeight.w500,
            fontSize:32.sp,
            color: Color(0xff2C2C2C))),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: ListView(children: [
          SizedBox(height: 60.h),
          Container(
            width: double.infinity,
            height: 70.h,
            decoration:BoxDecoration(
                color: Color(0xffFFEFE7),
                borderRadius: BorderRadius.circular(12.r)
            ),
            child: Center(child:   Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Van Driver name is  ",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w500,
                    fontSize:20.sp,
                    color: Color(0xff2C2C2C))),
                Text("William Son",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    fontSize:20.sp,
                    color: Color(0xff2C2C2C))),
              ],
            ),),
          ),
        SizedBox(height: 35.h),
        Container(
          width: double.infinity,

          decoration:BoxDecoration(
              color: Color(0xffFFEFE7),
              borderRadius: BorderRadius.circular(12.r)
          ),
          child:TableCalendar(firstDay: DateTime.utc(2010,10,16),lastDay:DateTime.utc(2030,3,14) ,focusedDay: today,
          locale: "en_US",
            rowHeight: 40.h,
            headerStyle: HeaderStyle(formatButtonVisible: false,titleCentered: true),
            availableGestures: AvailableGestures.all,
            onDaySelected: _onSelectedday,
            selectedDayPredicate: (day)=>isSameDay(day, today),
          ) ,
        ),
          SizedBox(height: 35.h),
        Container(
          width: double.infinity,

          decoration:BoxDecoration(
              color: Color(0xffFFEFE7),
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
                    Text("Time:",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w800,
                        fontSize:24.sp,
                        color: Color(0xff2C2C2C))),
                    Text("60 Minutes",style:GoogleFonts.roboto(
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
                        color: Color(0xff29A375))),
                  ],),
                SizedBox(height: 37.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Transform.translate(
                      offset: Offset(-35,0),
                      child: Container(
                        width:25.w,
                        height:25.h,

                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                    ),Container(height: 1.h,width: 220.w, color: Colors.black,),
                    Transform.translate(
                      offset: Offset(35,0),
                      child: Container(
                        width:25.w,
                        height:25.h,

                        decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                    ),
                  ],),
                SizedBox(height: 35.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(child:Center(
                    child: Text("Accept",style:GoogleFonts.roboto(
                      fontWeight: FontWeight.w500,
                      fontSize:20.sp,
                      color: Color(0xffFFFFFF))),
                  ),  width: 130.w,height:48.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r),color: Color(0xff008E59))),
                  Container(child:Center(
                    child: Text("Decline",style:GoogleFonts.roboto(
                        fontWeight: FontWeight.w500,
                        fontSize:20.sp,
                        color: Color(0xffFFFFFF))),
                  ), width: 130.w,height:48.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(6.r),color: Color(0xffFF0000))),
                ],)
              ],
            ),
          )
        ),
          SizedBox(height: 35.h,),
          Container(
              width: double.infinity,

              decoration:BoxDecoration(
                  color: Color(0xffFFEFE7),
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
                        Text("Time:",style:GoogleFonts.roboto(
                            fontWeight: FontWeight.w800,
                            fontSize:24.sp,
                            color: Color(0xff2C2C2C))),
                        Text("60 Minutes",style:GoogleFonts.roboto(
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
                            color: Color(0xff29A375))),
                      ],),
                    SizedBox(height: 37.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.translate(
                          offset: Offset(-35,0),
                          child: Container(
                            width:25.w,
                            height:25.h,

                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                        ),Container(height: 1.h,width: 220.w, color: Colors.black,),
                        Transform.translate(
                          offset: Offset(35,0),
                          child: Container(
                            width:25.w,
                            height:25.h,

                            decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.white),),
                        ),
                      ],),
                    SizedBox(height: 35.h,),
                   Column(
                     children: [
                       Text("Join Call",style:GoogleFonts.roboto(
                           fontWeight: FontWeight.w800,
                           fontSize:28.sp,
                           color: Color(0xff2C2C2C))),
                       SizedBox(height: 18.h),
                       Text("https:sajhSJbd434/wefefvwe."
                          " com",style:GoogleFonts.roboto(
                           fontWeight: FontWeight.w500,
                           fontSize:20.sp,
                           color: Color(0xff707070))),
                     ],
                   )
                  ],
                ),
              )
          ),

        ],),
      ),
    );
  }
}
