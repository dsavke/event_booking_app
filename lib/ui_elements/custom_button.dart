import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';
class CustomButton extends StatelessWidget {
  final  onTap;
  final String btnTxt;
  final Color backgroundColor;
  CustomButton({ this.onTap,  required this.btnTxt, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      backgroundColor:  MyColors.accentColor ,
      minimumSize: Size(MediaQuery.of(context).size.width, 52),
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );

    return  TextButton(
        onPressed: onTap,
        style: flatButtonStyle,
        child: Text(btnTxt,
            style: Theme.of(context).textTheme.headline3?.copyWith(color: MyColors.whiteColor, fontSize: 16)),
    );
  }
}