import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/data/email_data.dart';
import 'package:pas_mobile/app/pages/profile_page/profile_page_controller.dart';
import 'package:pas_mobile/app/pages/profile_page/widget/settings_widget.dart';
import 'package:pas_mobile/app/pages/profile_page/widget/signout_button.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class ProfilePageView extends StatelessWidget {
  ProfilePageView({Key? key}) : super(key: key);
  ProfilePageController controller = Get.put(ProfilePageController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsBase.whiteBase,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: width * 0.1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                _buildProfileImage(),
                SizedBox(height: 30),
                _buildUsername(),
                _buildDivider(),
                _buildSetting("Personal Data", Icons.person),
                _buildSetting("Appearance", Icons.color_lens),
                _buildSetting("Language", Icons.language),
                _buildSetting("Notification", Icons.notifications),
                _buildDivider(),
                _buildSetting("Privacy Police", Icons.privacy_tip_outlined),
                _buildSetting("FAQs", Icons.info),
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

  Widget _buildProfileImage() {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Obx(() {
            if (controller.image.value.path == '') {
              return _buildPlaceholderImage();
            } else {
              return _buildFileImage();
            }
          }),
        ),
        _buildAddPhotoIcon(),
      ],
    );
  }

  Widget _buildPlaceholderImage() {
    return Container(
      child: ClipOval(
        child: Image.asset(
          "assets/images/dump/6367448e-7474-4650-bd2d-02a8f7166ab4_106161_TABLET_LANDSCAPE_LARGE_16_9.jpg",
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildFileImage() {
    return Container(
      child: ClipOval(
        child: Image.file(
          controller.image.value,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildAddPhotoIcon() {
    return ClipOval(
      child: Material(
        color: ColorsBase.whiteBase,
        child: InkWell(
          onTap: () {
            controller.imagePicker();
          },
          child: Container(
            width: 50,
            height: 50,
            child: Center(
              child: Icon(
                Icons.add_a_photo,
                size: 25,
                color: ColorsBase.purpleLightBase,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUsername() {
    return Obx(
      () => Text(
        controller.username.value,
        style: TextStyle(
          fontSize: 24,
          fontFamily: "Poppins",
          color: ColorsBase.purpleLightBase,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      height: 70,
      indent: 40,
      endIndent: 40,
    );
  }

  Widget _buildSetting(String name, IconData icon) {
    return Column(
      children: [
        SettingWidget(
          icon: icon,
          name: name,
        ),
        SizedBox(height: 20),
      ],
    );
  }
}
