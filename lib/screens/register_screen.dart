import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mandoub/widgets/custom_button.dart';
import 'package:mandoub/widgets/custom_text_feild.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _phoneController = TextEditingController();
  String? uid ;
  @override
  void initState() { 
    super.initState();
    uid = FirebaseAuth.instance.currentUser!.uid;
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,backgroundColor: Colors.transparent,),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
              Text(uid!),
                Padding(
                  padding: const EdgeInsets.only(right:29.0),
                  child: Align(
                    
                    alignment: Alignment.topRight,
                    child: Text(
                      
                      ' مرحباً بك في مندوب   ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 20, fontWeight: FontWeight.bold),)),
                ),
                SizedBox(height: 10.h,),
                Padding(
                  padding: const EdgeInsets.only(right:38.0),
                  child: Align(
                    
                    alignment: Alignment.topRight,
                    child: Text(
                      
                      ' إنشاء حساب جديد   ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 14, color: Color(0xff1379A2)),)),
                ),
                SizedBox(height: 50.h,), 
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: AppTextField(hint: 'رقم الهاتف', controller: _phoneController , keyboardType: TextInputType.number,)),
                  SizedBox(height: 20.h,),
                   
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: AppTextField(hint: 'الاسم الشخصي', controller: _phoneController , keyboardType: TextInputType.text,)), 
                  // city 
                  SizedBox(height: 50.h,) ,
                  CustomButton(onPress: (){}, text: 'إنشاء حساب ', textcolor: Colors.black,color: Color(0xffFCF5AD))

          ],
        ),
      ),
    );
  }
}