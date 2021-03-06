import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoub/main.dart';
import 'package:mandoub/screens/home_screen.dart';
import 'package:mandoub/screens/verify_screen.dart';
import 'package:mandoub/widgets/custom_button.dart';
import 'package:mandoub/widgets/custom_text_feild.dart';
//  enum MobileVerificationState {
//   SHOW_MOBILE_FORM_STATE,
//   SHOW_OTP_FORM_STATE,
// }

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final phoneController = TextEditingController();
   String? uid ;
  @override
  void initState() { 
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          
          children: [
            SizedBox(height: 40.h),

            Align(

              alignment: AlignmentDirectional.topEnd,
              child: Image.asset('images/logo1.png')),

              SizedBox(height: 100.h,),
              
              Padding(
                padding: const EdgeInsets.only(right:29.0),
                child: Align(
                  
                  alignment: Alignment.topRight,
                  child: Text(
                    
                    'كم رقم هاتفك ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 20, fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(right:38.0),
                child: Align(
                  
                  alignment: Alignment.topRight,
                  child: Text(
                    
                    ' ستصلك رسالة نصية لتأكيد رقم الهاتف  ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 14,),)),
              ),
              SizedBox(height: 50.h,),

              
 Padding(
                padding: const EdgeInsets.only(right:38.0),
                child: Text(
                  
                 'أكتب رقم الهاتف لتسجيل الدخول او انشاء حساب جديد ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 12,),),
              ),
              SizedBox(height: 17.h,),

              Container(
                decoration: BoxDecoration(
                  color: Color(0xffF0F2F3),
                ),
                width:370 ,
                height: 45,
                child: AppTextField(hint: ' XX XXX XXXX', controller: phoneController  ,prefix: Text('+972'), keyboardType: TextInputType.text,)), 
              SizedBox(height: 50.h,), 
               CustomButton(onPress: (){
            //        if(uid !=null){
            //  Navigator.pushReplacementNamed(context, '/home_screen');
            //        }
                   
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>VerifyScreen(phone: phoneController.text,)));
               }, text: 'التالي', textcolor: Colors.white,color: Color(0xff1379A2)
               )
              
          ],
        ),
      ),
      
    );
  }
}