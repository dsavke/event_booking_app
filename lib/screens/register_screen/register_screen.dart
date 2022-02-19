import 'package:event_booking_app/ui_elements/custom_button.dart';
import 'package:event_booking_app/ui_elements/custom_text_field.dart';
import 'package:event_booking_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
            Colors.white54,
            Colors.white,
          ])),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .75,
                  margin: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                      border: Border.all(color: Colors.white, width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                        fillColor: Colors.white,
                        hintText: "Enter Name",
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomTextField(
                        fillColor: Colors.white,
                        hintText: "Enter Email",
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      CustomTextField(
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
                        fillColor: Colors.white,
                        hintText: "Confirm Password",
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      CustomButton(
                          onTap: () {},
                          btnTxt: "Sign Up",
                          backgroundColor: MyColors.accentColor),
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
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
