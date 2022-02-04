import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';
class CustomButton extends StatelessWidget {
  final  onTap;
  final String btnTxt;
  final Color backgroundColor;
  CustomButton({ required this.onTap,  required this.btnTxt, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor:  MyTheme.accent_color ,
      minimumSize: Size(MediaQuery.of(context).size.width, 52),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextButton(
        onPressed: onTap,
        style: flatButtonStyle,
        child: Text(btnTxt,
            style: Theme.of(context).textTheme.headline3?.copyWith(color: MyTheme.white, fontSize: 16)),
      ),
    );
  }
}