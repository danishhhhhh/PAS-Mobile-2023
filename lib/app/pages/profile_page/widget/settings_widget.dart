import 'package:flutter/material.dart';
import 'package:pas_mobile/common/theme/theme.dart';

class SettingWidget extends StatelessWidget {
  const SettingWidget({super.key, required this.icon, required this.name});

  final String name;
  final IconData icon;

@override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(width: 30), 
          Icon(
            icon,
            color: ColorsBase.orangeBase,
          ),
          SizedBox(width: 15), 
          Expanded(
            child: Text(
              name,
              style: TextStyle(
                fontFamily: 'Poppins',
                color: ColorsBase.purpleLightBase,
                fontSize: 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}