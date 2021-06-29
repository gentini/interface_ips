import 'package:flutter/material.dart';
import 'package:ips/modules/splash/splash_page.dart';
import 'package:ips/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'IPS',
      theme: ThemeData(
        primaryColor: AppColors.backlogo,
      ),
      home: SplashPage(),
    );
  }
}
