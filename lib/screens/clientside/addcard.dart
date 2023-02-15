import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/credit_card_widget.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Addcard extends StatefulWidget {
  const Addcard({Key? key}) : super(key: key);

  @override
  State<Addcard> createState() => _AddcardState();
}

class _AddcardState extends State<Addcard> {
  String cardnumber='';
  String expirydate='';
  String cardholdername='';
  String cvvcode='';
  bool iscvvfocused=false;
  final GlobalKey<FormState> _formkey =GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        leading: GestureDetector(onTap:(){setState(() {
          Navigator.pop(context);
        });},child: Icon(Icons.arrow_back,size: 20,)),
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text("Add Your Card",style:GoogleFonts.roboto(
        fontWeight: FontWeight.w800,
        fontSize:24.sp,
        color: Color(0xff000000)),) ,),
      body: Column(children: [
        CreditCardWidget(cardNumber: cardnumber, expiryDate: expirydate, cardHolderName: cardholdername, cvvCode: cvvcode, showBackView: iscvvfocused, onCreditCardWidgetChange:(CreditCardBrand creditCardBrand){},bankName: "AMEX Bank",obscureCardCvv: true,obscureCardNumber: true,isHolderNameVisible: true,isSwipeGestureEnabled: true,cardType: CardType.mastercard,glassmorphismConfig: Glassmorphism(blurX: 15.0,blurY: 15.0,gradient: LinearGradient(begin: Alignment.topLeft,end:Alignment.bottomRight,colors: <Color>[Color(0xff1B7A9A).withOpacity(0.8),Colors.grey.withOpacity(0.8)] )),),
        Expanded(child: SingleChildScrollView(child: Column(children: [
        CreditCardForm(cardNumber: cardnumber, expiryDate: expirydate, cardHolderName: cardholdername,
            cvvCode: cvvcode, onCreditCardModelChange: onCreditCardModelChange,
            themeColor: Colors.black, formKey: _formkey,
            cardNumberDecoration: InputDecoration(
              labelText: 'Number',
              hintText: 'xxxx xxxx xxxx xxxx',
              hintStyle: textStyle,
              labelStyle: textStyle,
                filled: true,
                fillColor:Color(0xffF4F4F4),
              focusedBorder: border,
              enabledBorder: border
            ),
          cardHolderDecoration: InputDecoration(
              labelText: 'Card Holder',
              hintStyle: textStyle,
              labelStyle: textStyle,
              filled: true,
              fillColor:Color(0xffF4F4F4),
              focusedBorder: border,
              enabledBorder: border
          ) ,
          expiryDateDecoration: InputDecoration(
              labelText: 'Expiry Date',
              hintText: 'xx/xx',
              hintStyle: textStyle,
              labelStyle: textStyle,
              filled: true,
              fillColor:Color(0xffF4F4F4),
              focusedBorder: border,
              enabledBorder: border

          ),
          cvvCodeDecoration:InputDecoration(
              labelText: 'CVV',
              hintText: 'xxx',
              hintStyle: textStyle,
              labelStyle: textStyle,
              focusedBorder: border,
              enabledBorder: border,
            filled: true,
            fillColor:Color(0xffF4F4F4),
          ) ,

        ),
          SizedBox(height: 38.h),
          GestureDetector(
            onTap: (){
              setState(() {
                Navigator.pushNamed(context, 'Cp');
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
                width: double.infinity,
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
          SizedBox(height: 38.h),

        ],),))
      ],),
    );
  }
  OutlineInputBorder border=OutlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xffF4F4F4),
          width: 2.0.w,
    ),
    borderRadius: BorderRadius.all(Radius.circular(8.r))
  );

  TextStyle textStyle=TextStyle(color: Colors.black);
  void onCreditCardModelChange(CreditCardModel? p1) {
    setState(() {
      cardnumber= p1!.cardNumber;
      expirydate=p1.expiryDate;
      cardholdername=p1.cardHolderName;
      cvvcode=p1.cvvCode;
      iscvvfocused=p1.isCvvFocused;
    });
  }
}
