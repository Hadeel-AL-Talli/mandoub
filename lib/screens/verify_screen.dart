import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoub/main.dart';
import 'package:mandoub/screens/home_screen.dart';
import 'package:mandoub/screens/register_screen.dart';
import 'package:mandoub/widgets/code_text_feild.dart';
import 'package:mandoub/widgets/custom_button.dart';
import 'package:pinput/pin_put/pin_put.dart';
class VerifyScreen extends StatefulWidget {
  final String phone;
   VerifyScreen({ Key? key ,required this.phone }) : super(key: key);

  @override
  _VerifyScreenState createState() => _VerifyScreenState();
}

class _VerifyScreenState extends State<VerifyScreen> {
  final GlobalKey<ScaffoldState> _scaffoldkey = GlobalKey<ScaffoldState>();
  late String _verificationCode;
  final TextEditingController _pinPutController = TextEditingController();
  final FocusNode _pinPutFocusNode = FocusNode();
  final BoxDecoration pinPutDecoration = BoxDecoration(
    color: const Color(0xffF0F2F3),
    borderRadius: BorderRadius.circular(10.0),
     border: Border.all(
       color:  Color(0xffF0F2F3),
     ),
  );
 @override
 void initState() { 
   super.initState();
   _verifyPhone();
 }
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
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
                    
                    'تأكيد رقم الهاتف \n  +972 ${widget.phone}' ,style: TextStyle(fontFamily: 'Tj', fontSize: 20, fontWeight: FontWeight.bold),)),
              ),
              SizedBox(height: 10.h,),
              Padding(
                padding: const EdgeInsets.only(right:38.0),
                child: Align(
                  
                  alignment: Alignment.topRight,
                  child: Text(
                    
                    '      اكتب رمز التحقق المرسل لك   ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 14,),)),
              ),
              SizedBox(height: 30.h,),

              

           SizedBox(height: 10.h,),
              Padding(
            padding: const EdgeInsets.all(30.0),
            child: PinPut(
              fieldsCount: 6,
              textStyle: const TextStyle(fontSize: 25.0, color: Colors.black),
              eachFieldWidth: 40.0,
              eachFieldHeight: 55.0,
              focusNode: _pinPutFocusNode,
              controller: _pinPutController,
              submittedFieldDecoration: pinPutDecoration,
              selectedFieldDecoration: pinPutDecoration,
              followingFieldDecoration: pinPutDecoration,
              pinAnimationType: PinAnimationType.fade,
              onSubmit:(pin) async{
                //  try {
                //   await FirebaseAuth.instance
                //       .signInWithCredential(PhoneAuthProvider.credential(
                //           verificationId: _verificationCode, smsCode: pin))
                //       .then((value) async {
                //     if (value.user != null) {
                //       print('logged in ');
                //       Navigator.pushAndRemoveUntil(
                //           context,
                //           MaterialPageRoute(builder: (context) => RegisterScreen()),
                //           (route) => false);
                //     }
                //   });
                // } catch (e) {
                //   FocusScope.of(context).unfocus();
                //   _scaffoldkey.currentState!
                //       .showSnackBar(const SnackBar(content: Text('invalid OTP')));
                // }
                try {
                  await FirebaseAuth.instance
                      .signInWithCredential(PhoneAuthProvider.credential(
                          verificationId: _verificationCode, smsCode: pin))
                      .then((value) async {
                    if (value.user != null) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => RegisterScreen()),
                          (route) => false);
                    }
                  });
                } catch (e) {
                  FocusScope.of(context).unfocus();
                  _scaffoldkey.currentState!
                      .showSnackBar( const SnackBar(content: Text('invalid OTP')));
                }
             
              }
            )
              ),

             SizedBox(height: 50.h,),
              // CustomButton(onPress: () async{
              //           try {
              //     await FirebaseAuth.instance
              //         .signInWithCredential(PhoneAuthProvider.credential(
              //             verificationId: _verificationCode!, smsCode: _pinPutController.text))
              //         .then((value) async {
              //       if (value.user != null) {
              //        // print('logged in ');
              //         // Problem is hereeeeee
              //         // Navigator.pushAndRemoveUntil(
              //         //     context,
              //         //     MaterialPageRoute(builder: (context) => RegisterScreen()),
              //         //     (route) => false);
              //       }
              //     });
              //   } catch (e) {
              //     FocusScope.of(context).unfocus();
              //     _scaffoldkey.currentState!
              //         .showSnackBar(SnackBar(content: Text('invalid OTP')));
              //   }
             

              // }, text: ' التالي ',textcolor: Colors.white, color: Color(0xff1379A2))
          ],
        ),
      ),
    );
  }

  _verifyPhone() async {
    await FirebaseAuth.instance.verifyPhoneNumber(
        phoneNumber: '+972${widget.phone}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await FirebaseAuth.instance
              .signInWithCredential(credential)
              .then((value) async {
           if (value.user != null) {
              print('user logged in');
              //Navigate to register 
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterScreen()),
                  (route) => false);
          } 
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          print(e.message);
        },
        codeSent: ( verficationID,  resendToken) {
          setState(() {
            _verificationCode = verficationID;
          });
        },
        codeAutoRetrievalTimeout: (String verificationID) {
          setState(() {
            _verificationCode = verificationID;
          });
        },
        timeout: Duration(seconds: 120));
  }

}

