import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountUnderMScreen extends StatefulWidget {
  const AccountUnderMScreen({ Key? key }) : super(key: key);

  @override
  _AccountUnderMScreenState createState() => _AccountUnderMScreenState();
}

class _AccountUnderMScreenState extends State<AccountUnderMScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Center(
        child: Column(
         
          children: [
            SizedBox(height: 200.h,),
            Image.asset('images/account.png'),
            SizedBox(height: 28.h,),
            Text('الحساب قيد المراجعة ', style: TextStyle(fontFamily: 'Tj' , fontSize: 24),), 
            SizedBox(height: 220.h,),
            Text('  تواصل معنا لتفعيل الحساب ', style: TextStyle(fontFamily: 'Tj' , fontSize: 16),),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               SizedBox(width: 30.w,),
                Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                     child: Image.asset('images/whatsapp.png'),
                   ),
                   Text(' واتساب   ', style: TextStyle(fontFamily: 'Tj'),),
                   
                 ],
               ),

             
                Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                     child: Image.asset('images/facebook.png'),
                   ),
                   Text(' فيسبوك ', style: TextStyle(fontFamily: 'Tj'),),
                   
                 ],
               ),
                 Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   InkWell(
                     child: Image.asset('images/call.png'),
                   ),
                   Text('اتصل بنا ', style: TextStyle(fontFamily: 'Tj'),),
                   
                 ],
               ),
               
             ],
           )


          ],
        ),
      )
    );
  }
}