import 'package:flutter/material.dart';
import '../../core/constants/app_assets.dart';
import '../home_screen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  static  String routeName = 'splash_screen';
  static final Duration _duration = const Duration(seconds: 2);
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, HomeScreen.routeName);
    });
  }

  @override
  Widget build(BuildContext context) {

    var size = MediaQuery.of(context).size;
    return  SizedBox(
      height: size.height,
      width: size.width,
      child: Image.asset(AppAssets.splashScreen,
        fit: BoxFit.cover,
      ),
    );
  }
}
