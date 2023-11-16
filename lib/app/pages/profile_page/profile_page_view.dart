import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/email_data.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_controller.dart';
import 'package:pas_mobile/app/pages/profile_page/widget/settings_widget.dart';
import 'package:pas_mobile/app/pages/profile_page/widget/signout_button.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class ProfilePageView extends GetView<ProfilePageController> {
  const ProfilePageView({Key? key}) : super(key: key);

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
                  child: Obx(() {
                    if (controller.image.value.path == '') {
                      return Container(
                        child: ClipOval(
                          child: Image.asset(
                            "assets/images/dump/6367448e-7474-4650-bd2d-02a8f7166ab4_106161_TABLET_LANDSCAPE_LARGE_16_9.jpg",
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        child: ClipOval(
                          child: Image.file(
                            controller.image.value,
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    }
                  }),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    onPressed: () {
                      controller.imagePicker();
                    },
                    icon: Icon(Icons.add_a_photo, size: 30),
                  ),
                ),
                SizedBox(height: 30),
                Text(
                  username_data,
                  style: TextStyle(
                    fontSize: 24,
                    fontFamily: "Poppins",
                    color: ColorsBase.purpleLightBase,
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
                  name: "Appearance",
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
                SizedBox(height: 15),
                SignoutButton(),
                SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
