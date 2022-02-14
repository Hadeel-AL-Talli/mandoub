import 'package:flutter/material.dart';
import 'package:mandoub/widgets/custom_text_feild.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Account extends StatefulWidget {
  const Account({ Key? key }) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('الحساب', style: TextStyle(fontFamily: 'Tj' , fontSize: 18, color: Colors.black),),
          backgroundColor: Colors.white,elevation: 1,
          leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
        ),

        body: Column(
          children: [
            SizedBox(height: 47.h,),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text('الاسم ',  style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 12),)),
            ),
          Container(
            width: 366.w,
            height: 40.h,
             child: Center(child: Text('from api ' , style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 14) )),
            decoration: BoxDecoration(
                 color: Color(0xffF0F2F3),
                 borderRadius: BorderRadius.circular(20)
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text('المدينة ',  style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 12),)),
            ),
          Container(
            width: 366.w,
            height: 40.h,
             child: Center(child: Text('from api ' , style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 14) )),
            decoration: BoxDecoration(
                 color: Color(0xffF0F2F3),
                 borderRadius: BorderRadius.circular(20)
            ),
          ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topRight,
                child: Text('رقم الهاتف ',  style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 12),)),
            ),
          Container(
            width: 366.w,
            height: 40.h,
             child: Center(child: Text('from api ' , style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 14) )),
            decoration: BoxDecoration(
                 color: Color(0xffF0F2F3),
                 borderRadius: BorderRadius.circular(20)
            ),
          ),
          SizedBox(height: 24.h,),
           
Center(child: Text('لتغيير او تحديث المعلومات الـرجاء التواصل مع خدمة العملاءs ' , style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 12) )),

SizedBox(height: 10.h,),
  InkWell(
    onTap: (){
      
    },
    child: Container(
              width: 101.w,
              height: 27.h,
               child: Center(child: Text('خدمة العملاء  ' , style: TextStyle(fontFamily: 'Tj' , color: Colors.black , fontSize: 14) )),
              decoration: BoxDecoration(
                   color: Color(0xffF0F2F3),
                   borderRadius: BorderRadius.circular(20)
              ),
            ),
  ),


          ],
        ),
      ),
    );
  }
}