import 'package:flutter/material.dart';
import 'package:ips/modules/automatic/automatic_page.dart';
import 'package:ips/modules/config/config_page.dart';
import 'package:ips/modules/manual/manual_page.dart';
import 'package:ips/shared/themes/app_colors.dart';
import 'package:ips/shared/themes/app_images.dart';
import 'package:ips/shared/themes/app_text_styles.dart';
import 'package:ips/shared/widgets/current_time/current_time.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  get child => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(90),
        child: Container(
          height: 80,
          color: AppColors.primary,
          child: Center(
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text.rich(
                  TextSpan(
                    text: "IPS - Intelligent Precision System",
                    style: TextStyles.titleBoldBackground,
                  ),
                ),
              ),
              trailing: Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Container(
                  height: 60,
                  width: 96,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: CurrentTime(),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 0, right: 30),
            child: Container(
              child: Text("Informações"),
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage(AppImages.iconWash),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 0, right: 0),
            child: Container(
              child: Text("Telemetria"),
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Image.asset(AppImages.iconAutomatic),
              iconSize: 100,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => AutomaticPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Image.asset(AppImages.iconMan),
              iconSize: 100,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ManualPage(),
                  ),
                );
              },
            ),
            IconButton(
              icon: Image.asset(AppImages.iconConfig),
              iconSize: 100,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => ConfigPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
