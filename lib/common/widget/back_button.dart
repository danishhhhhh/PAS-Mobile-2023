import 'dart:ui';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/app/pages/detail_page/widget/back_button.dart
=======
import 'package:get/get.dart';
>>>>>>> 3de741590002583e686dfd9eae56f74b3af6529e:lib/common/widget/back_button.dart
import 'package:pas_mobile/common/theme/theme.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: InkWell(
        onTap: () {
          Get.back();
        },
        child: Container(
          clipBehavior: Clip.hardEdge,
          height: 55,
          width: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            color: ColorsBase.whiteBase
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
<<<<<<< HEAD:lib/app/pages/detail_page/widget/back_button.dart
            child: Container(
              height: 55,
              width: 55,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.arrow_back_ios,
                size: 20,
                color: ColorsBase.greyBase,
              ),
=======
            child: const Icon(
              Icons.arrow_back_ios_outlined,
              size: 20,
              color: ColorsBase.blackBase,
>>>>>>> 3de741590002583e686dfd9eae56f74b3af6529e:lib/common/widget/back_button.dart
            ),
          ),
        ),
      ),
    );
  }
}
