import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class InfoWidget extends StatelessWidget {
  const InfoWidget({super.key, required this.icon, required this.name});

  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(
              icon,
              color: ColorsBase.purpleDarkBase,
            ),
          ),
          Text(
            name,
            style: TextStyle(
              fontFamily: "Poppins",
              color: ColorsBase.blackBase,
            ),
          ),
        ],
      ),
    );
  }
}
