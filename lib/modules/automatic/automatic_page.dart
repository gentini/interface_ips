import 'package:flutter/material.dart';
import 'package:ips/shared/themes/app_colors.dart';
import 'package:ips/shared/themes/app_text_styles.dart';

class AutomaticPage extends StatelessWidget {
  const AutomaticPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        title: Text(
          "Automatic Page - IPS",
          style: TextStyles.titleBoldBackground,
        ),
      ),
    );
  }
}
