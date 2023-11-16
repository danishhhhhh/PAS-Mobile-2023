import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class TicketInfo extends StatelessWidget {

  const TicketInfo({super.key, required this.text, required this.image});
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SvgPicture.asset(
          image,
          width: 30,
          height: 30,
        ),
        Text(
          text,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            color: ColorsBase.whiteBase,
          ),
        )
      ],
    );
  }
}
