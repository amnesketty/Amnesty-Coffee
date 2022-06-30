import 'package:flutter/material.dart';
import 'Login.dart';
import 'Register.dart';
import 'Route.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Login Register Page",
    initialRoute: "/",
    routes: {
      MyRoutes.loginScreen: (cotext) => const MyApp(),
      MyRoutes.register: (cotext) => const MyApps(),
    },
  ));
}