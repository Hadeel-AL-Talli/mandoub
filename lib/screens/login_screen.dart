// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:mandoub/widgets/custom_button.dart';
// import 'package:mandoub/widgets/custom_text_feild.dart';

// class LoginScreen extends StatefulWidget {
//   const LoginScreen({ Key? key }) : super(key: key);

//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController textEditingController = TextEditingController();
//   @override
//   void initState() { 
//     super.initState();
//     textEditingController = TextEditingController();
    
//   }
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     textEditingController.dispose();
//     super.dispose();
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Padding(
//         padding: const EdgeInsets.all(8.0),
//         child: Column(
          
//           children: [
//             SizedBox(height: 40.h),

//             Align(

//               alignment: AlignmentDirectional.topEnd,
//               child: Image.asset('images/logo1.png')),

//               SizedBox(height: 100.h,),
              
//               Padding(
//                 padding: const EdgeInsets.only(right:29.0),
//                 child: Align(
                  
//                   alignment: Alignment.topRight,
//                   child: Text(
                    
//                     'كم رقم هاتفك ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 20, fontWeight: FontWeight.bold),)),
//               ),
//               SizedBox(height: 10.h,),
//               Padding(
//                 padding: const EdgeInsets.only(right:38.0),
//                 child: Align(
                  
//                   alignment: Alignment.topRight,
//                   child: Text(
                    
//                     ' ستصلك رسالة نصية لتأكيد رقم الهاتف  ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 14,),)),
//               ),
//               SizedBox(height: 50.h,),

              
//  Padding(
//                 padding: const EdgeInsets.only(right:38.0),
//                 child: Text(
                  
//                  'أكتب رقم الهاتف لتسجيل الدخول او انشاء حساب جديد ' ,style: TextStyle(fontFamily: 'Tj', fontSize: 12,),),
//               ),
//               SizedBox(height: 17.h,),

//               Container(
//                 decoration: BoxDecoration(
//                   color: Color(0xffF0F2F3),
//                 ),
//                 width:370 ,
//                 height: 45,
//                 child: AppTextField(hint: '+218 XX XXX XXXX', controller: textEditingController  , keyboardType: TextInputType.text,)), 
//               SizedBox(height: 50.h,), 
//                CustomButton(onPress: (){}, text: 'التالي', textcolor: Colors.white,color: Color(0xff1379A2)
//                )
              
//           ],
//         ),
//       ),
      
//     );
//   }
// }