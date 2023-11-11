import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class CardWidget extends StatelessWidget {
  CardWidget({super.key});

  Widget _buildCard() {
    return Container(
      height: 250,
      child: Card(
        child: Image.asset(
          'assets/images/dump/poster1.jpg',
          fit: BoxFit.cover,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        elevation: 5,
        margin: EdgeInsets.all(10),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Use _buildCard method in the build method
    return _buildCard();
  }
}