import 'package:flutter/material.dart';
import 'package:ips/modules/home/home_page.dart';
import 'package:ips/shared/themes/app_colors.dart';
import 'package:ips/shared/themes/app_images.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backlogo,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.logoCenter)),
        ],
      ),
    );
  }
}
