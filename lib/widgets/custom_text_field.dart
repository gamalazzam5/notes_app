import 'package:flutter/material.dart';
import 'package:notes_app/helper/constans.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint, this.maxLines = 1});
final String hint;
final int maxLines;
  @override
  Widget build(BuildContext context) {
    return TextField(
maxLines: maxLines,
      cursorColor: kPrimaryColor,
 decoration: InputDecoration(

   hintText: hint,
  border: buildBorder(),
   enabledBorder: buildBorder(),
  focusedBorder: buildBorder(kPrimaryColor),
 ),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
 borderRadius: BorderRadius.circular(8),
  borderSide:BorderSide(color: color ?? Colors.white)
);
  }
}
