import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoub/screens/account_under_maintainance.dart';
import 'package:mandoub/screens/drawer_screens/about_app.dart';
import 'package:mandoub/screens/drawer_screens/account.dart';
import 'package:mandoub/screens/drawer_screens/help_screen.dart';
import 'package:mandoub/screens/home_screen.dart';
import 'package:mandoub/screens/login.dart';
import 'package:mandoub/screens/login_screen.dart';
import 'package:mandoub/screens/register_screen.dart';
import 'package:mandoub/screens/splash_screen.dart';
import 'package:mandoub/screens/verify_screen.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}


class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 870),
      
      builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/splash_screen',
        routes: {
           '/splash_screen' : (context)=> SplashScreen(),
           '/login_screen' : (context)=> LoginScreen(),
          // '/verify_screen' :  (context)=>VerifyScreen(),
           '/register_screen':(context)=> RegisterScreen(), 
           '/accountunderM_screen' :(context)=> AccountUnderMScreen(),
           '/home_screen':(context)=>HomeScreen(),


           //** Drawer  */

           '/account_screen' : (context)=>Account(),
           '/aboutapp_screen'  :(context)=>AboutApp(),
           '/help_screen':(context)=> HelpScreen()

        },
      ),
    );
  }
}