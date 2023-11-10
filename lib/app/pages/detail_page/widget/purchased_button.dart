import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PurchasedButton extends StatelessWidget {
  const PurchasedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: ColorsBase.redBase,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: const Text(
          "BUY NOW",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            color: ColorsBase.whiteBase,
            fontSize: 16,
          ),
        ),
      ),
    )
    ;
  }
}
