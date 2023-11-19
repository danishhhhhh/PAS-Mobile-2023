import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_mobile/common/routes/routes.dart';
import 'package:pas_mobile/common/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PAS Mobile',
      theme: ThemeData(
          useMaterial3: true,
          inputDecorationTheme: InputDecorationTheme(
              errorStyle: TextStyle(
            fontFamily: "Poppins",
            color: ColorsBase.redBase,
          ))),
      getPages: routes,
      initialRoute: "/menu",
    );
  }
}
