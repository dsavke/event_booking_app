import 'package:event_booking_app/ui_elements/custom_button.dart';
import 'package:event_booking_app/ui_elements/custom_text_field.dart';
import 'package:event_booking_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.grey,
                Colors.white10,
              ])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Stack(
              children: [
          Container(
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.white54,
              borderRadius: const BorderRadius.all(Radius.circular(30)),
              border: Border.all(color: Colors.white, width: 2)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              Text(
                "Hey Newbie!",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)),
              ),
              Text(
                "Yor are welcome \n       to join us",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.7)),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomTextField(
                onSubmit: (e) {},
                onChanged: (e) {},
                fillColor: Colors.white,
                hintText: "Enter Name",
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                onSubmit: (e) {},
                onChanged: (e) {},
                fillColor: Colors.white,
                hintText: "Enter Email",
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                onSubmit: (e) {},
                onChanged: (e) {},
                fillColor: Colors.white,
                hintText: "Enter Password",
                isShowSuffixIcon: true,
                suffixIconUrl: Icons.visibility_outlined,
                isPassword: true,
              ),
              const SizedBox(
                height: 12,
              ),
              CustomTextField(
                onSubmit: (e) {},
                onChanged: (e) {},
                fillColor: Colors.white,
                hintText: "Confirm Password",
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                  onTap: () {},
                  btnTxt: "Sign Up",
                  backgroundColor: MyTheme.accent_color),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Already Registered?'),
                  InkWell(
                    child: Text(
                      'Login',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 30,)
            ],
          ),
        ),
        Positioned(
          top: 300,
            child: Container(
              height: 100,
              width: 30,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(topRight: Radius.circular(50),bottomRight: Radius.circular(100)),
                  border: Border.all(color: Colors.white, width: 2),
                color: Colors.white54,
            ),
          ),

      ),
      ],
    ),)
    ,
    )
    ,
    );
  }
}
