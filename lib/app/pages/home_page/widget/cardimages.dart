import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';


class CardWidget extends StatelessWidget {
  CardWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      // clipBehavior: Clip.hardEdge,
      height: 250,
      child: Card(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: Image.asset(
            'assets/images/dump/poster1.jpg',
            fit: BoxFit.cover,
            width: double.maxFinite,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),

        ),
        elevation: 5
      ),
    );
  }


  // CardWidget({Key? key}) : super(key: key);
  //
  // Widget _buildCard() {
  //   return Container(
  //     clipBehavior: Clip.hardEdge,
  //     height: 250,
  //     child: Card(
  //       child: Image.asset(
  //         'assets/images/dump/poster1.jpg',
  //         fit: BoxFit.cover,
  //         width: double.maxFinite,
  //       ),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(10.0),
  //       ),
  //       elevation: 5,
  //       margin: EdgeInsets.all(10),
  //     ),
  //   );
  // }
  //
  // @override
  // Widget build(BuildContext context) {
  //   // Use _buildCard method in the build method
  //   return _buildCard();
  // }
}