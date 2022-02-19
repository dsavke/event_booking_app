import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final TextInputType inputType;
  final Color? fillColor;
  final bool isPassword;
  final bool isIcon;
  final bool isShowSuffixIcon;
  final bool isShowPrefixIcon;
  final VoidCallback? onTap;
  final VoidCallback? onSuffixTap;
  final IconData? suffixIconUrl;
  final IconData? prefixIconUrl;

  CustomTextField({
    this.hintText = 'Write something...',
    this.controller,
    this.inputType = TextInputType.text,
    this.onSuffixTap,
    this.fillColor,
    this.isShowSuffixIcon = false,
    this.isShowPrefixIcon = false,
    this.onTap,
    this.isIcon = false,
    this.isPassword = false,
    this.suffixIconUrl,
    this.prefixIconUrl,
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: MyColors.whiteColor,
        boxShadow: [
          BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: const Offset(0, 4) // changes position of shadow
              ),
        ],
      ),
      child: TextField(
        controller: widget.controller,
        style: Theme.of(context).textTheme.headline2?.copyWith(
            color: Theme.of(context).textTheme.bodyText1?.color,
            fontSize: 16.0),
        keyboardType: widget.inputType,
        autofocus: false,
        //onChanged: widget.isSearch ? widget.languageProvider.searchLanguage : null,
        obscureText: widget.isPassword ? _obscureText : false,
        // inputFormatters: widget.inputType == TextInputType.phone ? <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp('[0-9+]'))] : null,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(style: BorderStyle.none, width: 0),
          ),
          isDense: true,
          hintText: widget.hintText,
          fillColor: widget.fillColor ?? Theme.of(context).accentColor,
          hintStyle: Theme.of(context).textTheme.headline2?.copyWith(
              fontSize: 12.0,
              color: Colors.black.withOpacity(.6),
              fontStyle: FontStyle.normal),
          filled: true,
          prefixIcon: widget.isShowPrefixIcon
              ? Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 14.0),
                  child: Icon(widget.prefixIconUrl,
                      color: Colors.black.withOpacity(.06)),
                )
              : const SizedBox.shrink(),
          prefixIconConstraints: const BoxConstraints(minWidth: 23, maxHeight: 20),
          suffixIcon: widget.isShowSuffixIcon
              ? widget.isPassword
                  ? IconButton(
                      icon: Icon(
                          _obscureText
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Theme.of(context).hintColor.withOpacity(0.3)),
                      onPressed: _toggle)
                  : widget.isIcon
                      ? IconButton(
                          onPressed: widget.onSuffixTap,
                          icon: Icon(
                            widget.suffixIconUrl,
                            color: Theme.of(context).textTheme.bodyText1?.color,
                          ),
                        )
                      : null
              : null,
        ),
        onTap: widget.onTap,
        cursorColor: MyColors.accentColor,
      ),
    );
  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
