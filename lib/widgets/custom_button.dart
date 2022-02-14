import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Color textcolor;
  Color color ;
  Function onPress;

   CustomButton({
    Key? key,
     required this.onPress,
   required this.text,
   required this.textcolor,
   required this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20)),
          minimumSize: const Size(370, 45),
        ),
        onPressed: () {
          onPress();
        },
        child:  Text(text,
            style:  TextStyle(
                color: textcolor,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Tj')));
  }
}