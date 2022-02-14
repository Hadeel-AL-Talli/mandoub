import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hint,
    required this.controller,
    this.prefix = const Text(''),
    this.keyboardType = TextInputType.text,

   
  }) : super(key: key);

  final String hint;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Widget prefix ;  

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      controller: controller,
      
      keyboardType: keyboardType,
      decoration: InputDecoration(
          hintText: hint,
          prefix:prefix ,
          hintStyle: TextStyle(fontFamily: 'Tj',  color: Color(0xff1379A2)),
          // fillColor: Color(0xff055456),
          enabledBorder: border(),
          focusedBorder: border(borderColor: Colors.black)
      ),
    );
  }

  OutlineInputBorder border({Color borderColor = Colors.grey}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: borderColor,
        width: 0,
      ),
      borderRadius: BorderRadius.circular(25),
    );
  }
}
