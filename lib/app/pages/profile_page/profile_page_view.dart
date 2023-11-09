import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:pas_mobile/app/pages/profile_page/widget/signout_button.dart';
import 'package:pas_mobile/app/pages/profile_page/widget/settings_widget.dart';


class ProfilePageView extends StatelessWidget {
const ProfilePageView({super.key});

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: Align(
          alignment: Alignment.topCenter,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/dump/6367448e-7474-4650-bd2d-02a8f7166ab4_106161_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  "Nama User",
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Poppins",
                    color: ColorsBase.purpleLightBase,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "qwertyhihihuhu@gmail.com",
                  style: TextStyle(
                    fontSize: 13,
                    fontFamily: "Poppins",
                    color: ColorsBase.orangeBase,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Divider(
                  height: 70,
                  indent: 40,
                  endIndent: 40,
                ),
                SettingWidget(
                  icon: Icons.person,
                  name: "Personal Data",
                ),
                SizedBox(height: 20),
                SettingWidget(
                  icon: Icons.color_lens,
                  name: "Appreance",
                ),
                SizedBox(height: 20),
                SettingWidget(
                  icon: Icons.language,
                  name: "Language",
                ),
                SizedBox(height: 20),
                SettingWidget(
                  icon: Icons.notifications,
                  name: "Notification",
                ),
                SizedBox(height: 20),
                Divider(
                  height: 10,
                  indent: 40,
                  endIndent: 40,
                ),
                SizedBox(height: 20),
                SettingWidget(
                  icon: Icons.privacy_tip_outlined,
                  name: "Privacy Police",
                ),
                SizedBox(height: 20),
                SettingWidget(
                  icon: Icons.info,
                  name: "FAQs",
                ),
                SizedBox(height: 20),
                SignoutButton(),
                SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
