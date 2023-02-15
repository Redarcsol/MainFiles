import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Cchatin extends StatefulWidget {
  const Cchatin({Key? key}) : super(key: key);

  @override
  State<Cchatin> createState() => _CchatinState();
}

class _CchatinState extends State<Cchatin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(


        leading: GestureDetector(onTap:(){setState(() {
          Navigator.pop(context);
        });},child: Icon(Icons.arrow_back,size: 20,)),
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListTile(
            leading:Transform.translate(
              offset: Offset(-30,0),
              child: CircleAvatar(backgroundImage: NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'),
              radius: 40.r,
              child: Transform.translate(
                  offset: Offset(20,-20),
                  child: Container(width: 16.w,height: 16.h,decoration: BoxDecoration(shape:BoxShape.circle,color: Color(0xff54EEB4)),)),
          ),
            ),
            title: Transform.translate(
              offset: Offset(-80,0),
              child: Column(children: [
                Text("Faiz",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w800,
                    fontSize:24.sp,
                    color: Color(0xff000000))),
                Text("online",style:GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize:12.sp,
                    color: Color(0xff7A7A7A))),
              ],),
            ),

          ),
        )
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: BottomAppBar(
            color: Color(0xffFAFAFA),
            elevation: 0,
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40.r),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Row(
                        children: [
                          Flexible(
                            child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  // enabledBorder: OutlineInputBorder(
                                  //   borderSide: BorderSide(
                                  //       width: 1, color: Color(0xff7c7c7c)), //<-- SEE HERE
                                  //   borderRadius: BorderRadius.circular(50.0),
                                  // ),
                                  icon: Icon(Icons.insert_emoticon),
                                  hintText: 'Message',
                                )),
                          ),

                          SizedBox(width: 8.w),
                          Icon(
                            Icons.camera_alt,
                            color: Color(0xff5a5a5a),
                          ),
                          SizedBox(width: 5.w)
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 2),
                Expanded(
                    child: InkWell(
                      onTap: () {},
                      child: CircleAvatar(
                          backgroundColor: Color(0xffF5F5F5),
                          child: Icon(Icons.send, color: Color(0xff21418A))),
                    ))
              ],
            )),
      ),
      body: SingleChildScrollView(
        physics: ScrollPhysics(),
        child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 18,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF3B08F),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8.r),
                                bottomRight: Radius.circular(8.r),
                                topLeft: Radius.circular(8.r)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Today we will schedule \na meeting"),
                                SizedBox(
                                  width: 9.w,
                                ),
                                Text(
                                  "3:48 AM",
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Color(0xff6b6b6b)),
                                ),

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xffF5F5F5),
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(8.r),
                                bottomRight: Radius.circular(8.r),
                                topRight: Radius.circular(8.r)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("Okay"),
                                SizedBox(
                                  width: 9.w,
                                ),
                                Text(
                                  "3:48 AM",
                                  style: TextStyle(
                                      fontSize: 10.sp, color: Color(0xff6b6b6b)),
                                ),

                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              );
            }),
      ),
    );
  }
}
