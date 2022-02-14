import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AboutApp extends StatefulWidget {
  const AboutApp({ Key? key }) : super(key: key);

  @override
  _AboutAppState createState() => _AboutAppState();
}

class _AboutAppState extends State<AboutApp> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
         appBar: AppBar(
            centerTitle: true,
            title: Text('حول التطبيق ', style: TextStyle(fontFamily: 'Tj' , fontSize: 18, color: Colors.black),),
            backgroundColor: Colors.white,elevation: 1,
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
          ),
          body:  Column(
            children: [
              SizedBox(height: 50.h,),
              Center(child: Image.asset('images/logo.png')),
               SizedBox(height: 40.h,),
               Container(
            width: 366.w,
            height: 223.h,
             child: Center(child: Text('مندوب نقطة وصل ما بين شـركات الأدوية و الصيدليات تقدر تتصفح أصناف الشـركات وتطلبها وتوصلك وانت في مكانك  ' ,textAlign: TextAlign.center, style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 18) )),
            decoration: BoxDecoration(
                 color: Color(0xffF0F2F3),
                 borderRadius: BorderRadius.circular(20)
            ),
          ),
          SizedBox(height: 30.h,),
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
      ),
    );
  }
}