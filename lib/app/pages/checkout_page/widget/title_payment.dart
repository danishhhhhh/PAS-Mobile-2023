import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class TitlePayment extends StatelessWidget {
  const TitlePayment({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 15),
      child: Text(
        title,
        style: TextStyle(
          fontFamily: "Poppins",
          fontWeight: FontWeight.w600,
          color: ColorsBase.purpleDarkBase,
          fontSize: 16
        ),
      ),
    );
  }
}
