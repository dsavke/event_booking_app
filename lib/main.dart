import 'package:event_booking_app/screens/register_screen/register_screen.dart';
import 'package:event_booking_app/screens/user-module/login-page.dart';
import 'package:event_booking_app/utils/constants/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home: LoginPage());
  }
}
