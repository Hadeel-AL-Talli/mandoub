import 'package:flutter/material.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({ Key? key }) : super(key: key);

  @override
  _HelpScreenState createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: Text('المساعدة  ', style: TextStyle(fontFamily: 'Tj' , fontSize: 18, color: Colors.black),),
            backgroundColor: Colors.white,elevation: 1,
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios, color: Colors.black,)),
          ),
      ),
    );
  }
}