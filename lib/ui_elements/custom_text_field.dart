import 'package:flutter/material.dart';
import '../utils/constants/colors.dart';
class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final FocusNode? nextFocus;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final Color? fillColor;
  final int maxLines;
  final bool isPassword;
  final bool isCountryPicker;
  final bool isShowBorder;
  final bool isIcon;
  final bool isShowSuffixIcon;
  final bool isShowPrefixIcon;
  final VoidCallback? onTap;
  final  Function(String) onChanged;
  final VoidCallback? onSuffixTap;
  final IconData? suffixIconUrl;
  final IconData? prefixIconUrl;
  final bool isSearch;
  final Function(String) onSubmit;
  final bool isEnabled;
  final TextCapitalization capitalization;

  CustomTextField(
      {this.hintText = 'Write something...',
        this.controller,
        this.focusNode,
        this.nextFocus,
        this.isEnabled = true,
        this.inputType = TextInputType.text,
        this.inputAction = TextInputAction.next,
        this.maxLines = 1,
        this.onSuffixTap,
        this.fillColor,
        required this.onSubmit,
        required this.onChanged,
        this.capitalization = TextCapitalization.none,
        this.isCountryPicker = false,
        this.isShowBorder = false,
        this.isShowSuffixIcon = false,
        this.isShowPrefixIcon = false,
        this.onTap,
        this.isIcon = false,
        this.isPassword = false,
        this.suffixIconUrl,
        this.prefixIconUrl,
        this.isSearch = false,
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
        color: MyTheme.white,
        boxShadow:  [
          BoxShadow(
              color: Colors.grey.withOpacity(.2),
              spreadRadius: 0.5,
              blurRadius: 5,
              offset: Offset(0, 4) // changes position of shadow
          ),
        ],

      ),
      child:TextField(
        maxLines: widget.maxLines,
        controller: widget.controller,
        focusNode: widget.focusNode,
        style: Theme.of(context).textTheme.headline2?.copyWith(color: Theme.of(context).textTheme.bodyText1?.color, fontSize: 16.0),
        textInputAction: widget.inputAction,
        keyboardType: widget.inputType,
        textCapitalization: widget.capitalization,
        enabled: widget.isEnabled,
        autofocus: false,
        //onChanged: widget.isSearch ? widget.languageProvider.searchLanguage : null,
        obscureText: widget.isPassword ? _obscureText : false,
        // inputFormatters: widget.inputType == TextInputType.phone ? <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp('[0-9+]'))] : null,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 0),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:const BorderSide(style: BorderStyle.none, width: 0),
          ),
          isDense: true,
          hintText: widget.hintText,
          fillColor: widget.fillColor ?? Theme.of(context).accentColor,
          hintStyle: Theme.of(context).textTheme.headline2?.copyWith(fontSize: 12.0, color: Colors.black.withOpacity(.6),fontStyle: FontStyle.normal),
          filled: true,
          prefixIcon: widget.isShowPrefixIcon ? Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 14.0),
            child: Icon(widget.prefixIconUrl,color: Colors.black.withOpacity(.06)),
          ) : SizedBox.shrink(),
          prefixIconConstraints: BoxConstraints(minWidth: 23, maxHeight: 20),
          suffixIcon: widget.isShowSuffixIcon
              ? widget.isPassword
              ? IconButton(
              icon: Icon(_obscureText ? Icons.visibility_off_outlined : Icons.visibility_outlined, color: Theme.of(context).hintColor.withOpacity(0.3)),
              onPressed: _toggle)
              : widget.isIcon
              ? IconButton(
            onPressed: widget.onSuffixTap,
            icon: Icon(widget.suffixIconUrl,
              color: Theme.of(context).textTheme.bodyText1?.color,
            ),
          )
              : null
              : null,
        ),
        onTap: widget.onTap,
        onSubmitted: (text) => widget.nextFocus != null ? FocusScope.of(context).requestFocus(widget.nextFocus)
            :  widget.onSubmit(text),
        onChanged: widget.onChanged,
        cursorColor: MyTheme.accent_color,


      ) ,

    );




  }

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
}
