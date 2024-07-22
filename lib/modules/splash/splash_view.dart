import 'dart:async';
import 'package:face_book/layout/layout_viwe.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushReplacementNamed(context, LayoutViwe.routeName);
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return (Image.asset(
      "assets/images/splash_view_x3.png",
      fit: BoxFit.cover,
    ));
  }
}
