import 'package:flutter/material.dart';
import 'package:pas_mobile/app/pages/detail_page/component/show_modal_component.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class PurchasedButton extends StatelessWidget {
  const PurchasedButton(
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: ElevatedButton(
        onPressed: () {
          showModalBottomSheet(
            backgroundColor: ColorsBase.whiteBase,
            context: context,
            builder: (BuildContext context) {
              return ShowModalComponent(context: context,);
            },
          );
        },
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 15),
            backgroundColor: ColorsBase.redBase,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        child: Text(
          "BUY NOW",
          style: TextStyle(
            fontFamily: "Poppins",
            fontWeight: FontWeight.w600,
            color: ColorsBase.whiteBase,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}
