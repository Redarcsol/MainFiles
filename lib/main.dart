import 'package:elemed/screens/clientside/2ndpayment.dart';
import 'package:elemed/screens/clientside/addcard.dart';
import 'package:elemed/screens/clientside/cchat.dart';
import 'package:elemed/screens/clientside/cchatin.dart';
import 'package:elemed/screens/clientside/clab.dart';
import 'package:elemed/screens/clientside/clogin.dart';
import 'package:elemed/screens/clientside/cmedrecord.dart';
import 'package:elemed/screens/clientside/confirmpayment.dart';
import 'package:elemed/screens/clientside/cprofile.dart';
import 'package:elemed/screens/clientside/healthsum.dart';
import 'package:elemed/screens/clientside/home.dart';
import 'package:elemed/screens/clientside/medhistory.dart';
import 'package:elemed/screens/clientside/notifications.dart';
import 'package:elemed/screens/clientside/onboard.dart';
import 'package:elemed/screens/clientside/payments.dart';
import 'package:elemed/screens/clientside/register.dart';
import 'package:elemed/screens/clientside/splash.dart';
import 'package:elemed/screens/clientside/ui.dart';
import 'package:elemed/screens/providers/adetails.dart';
import 'package:elemed/screens/providers/home.dart';
import 'package:elemed/screens/providers/login.dart';
import 'package:elemed/screens/providers/odetails.dart';
import 'package:elemed/screens/providers/pchat.dart';
import 'package:elemed/screens/providers/pchatin.dart';
import 'package:elemed/screens/providers/pnotify.dart';
import 'package:elemed/screens/providers/porders.dart';
import 'package:elemed/screens/providers/pprofile.dart';
import 'package:elemed/screens/providers/sreports.dart';
import 'package:elemed/screens/vandrivers/vchat.dart';
import 'package:elemed/screens/vandrivers/vchatin.dart';
import 'package:elemed/screens/vandrivers/vhome.dart';
import 'package:elemed/screens/vandrivers/vlogin.dart';
import 'package:elemed/screens/vandrivers/vnotify.dart';
import 'package:elemed/screens/vandrivers/vorderdetails.dart';
import 'package:elemed/screens/vandrivers/vprofile.dart';
import 'package:elemed/screens/vandrivers/vregister.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//
// void main() {
//   WidgetsFlutterBinding.ensureInitialized();
//   SystemChrome.setPreferredOrientations([
//     DeviceOrientation.portraitUp,
//     DeviceOrientation.portraitDown,
//   ]);
//   runApp(
//       DevicePreview(
//           enabled: true,
//           builder: (context) => Testui()
//      ));
//   }
void main() {

  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(430, 932),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'eleMed',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.blue,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),

          initialRoute: '/',
          routes: {
            // When navigating to the "/" route, build the FirstScreen widget.
            '/': (context) => Splash(),
            'ui': (context) => Testui(),
            // patient flow
            'ch': (context) => CHome(),
            'cr': (context) => Clreg(),
            'cl': (context) => Clogin(),
            'ac': (context) => Addcard(),
            'Cp': (context) => Cpayments(),
            'Cp2': (context) => NCpayments(),
            'Cpay': (context) => ConfirmPay(),
            'cn': (context) => Cnotify(),
            'cc': (context) => Cchat(),
            'ccin': (context) => Cchatin(),
            'cpro': (context) => Cprofile(),
            'cmed': (context) => Cmedr(),
            'chealth': (context) => Chealth(),
            'clab': (context) => Clab(),
            'cmed': (context) => Cmedr(),
            'cmedhis': (context) => Cmedhis(),


            //providers
            'plogin': (context) => Plogin(),
            'phome': (context) => Phome(),
            'ad': (context) => Adetails(),
            'od': (context) => Odetails(),
            'S': (context) => Sdetails(),
            'pnotification': (context) => Pnotify(),
            'ppro': (context) => Pprofile(),
            'porder': (context) => Orders(),
            'pchat': (context) => Pchat(),
            'pchatin': (context) => Pchatin(),

            //Van driver
            'vreg': (context) => Vreg(),
            'vlog': (context) => Vlogin(),
            'vhome': (context) => Vhome(),
            'vod': (context) => Vodetails(),
            'vchat': (context) => Vchat(),
            'vnot': (context) => Vnotify(),
            'vchatin': (context) =>  Vchatin(),
            'vprofile': (context) => Vprofile(),

          },
        );
      },

    );
  }
  }

