import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/app/pages/home_page/home_page_controller.dart';
import 'package:pas_mobile/common/theme/theme.dart';
import 'package:shimmer/shimmer.dart';

class CardWidget extends StatelessWidget {
  CardWidget({required this.index});

  final int index;
  final HomePageController controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Obx(
      () => controller.isLoading.value
          ? Container(
        height: height * 0.275,
        width: double.maxFinite,
            child: Card(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Center(
                    child: Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        height: double.maxFinite,
                        width: double.maxFinite,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
          )
          : InkWell(
              onTap: () {
                Get.toNamed("/detail", arguments: {
                  "id": controller.data.value.embedded!.events[index].id
                });
              },
              child: Container(
                height: height * 0.275,
                child: Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Stack(
                      children: [
                        Image.network(
                          controller.data.value.embedded!.events[index]
                              .images![0].url,
                          fit: BoxFit.cover,
                          width: double.maxFinite,
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            color: ColorsBase.blackBase.withOpacity(0.75),
                            height: 50,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  Text(
                                    controller.data.value.embedded!
                                        .events[index].dates!.start.localDate,
                                    style: TextStyle(
                                      color: ColorsBase.lightGreyBase,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
                                    child: Icon(
                                      Icons.access_time,
                                      color: ColorsBase.lightGreyBase,
                                      size: 16,
                                    ),
                                  ),
                                  Text(
                                    controller.data.value.embedded!
                                        .events[index].dates!.start.localTime,
                                    style: TextStyle(
                                      color: ColorsBase.lightGreyBase,
                                      fontFamily: "Poppins",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                ),
              ),
            ),
    );
  }
}
