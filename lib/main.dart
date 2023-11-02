import 'package:flutter/material.dart';
import 'package:get/get.dart';
<<<<<<< HEAD
import 'package:pas_mobile/common/routes/routes.dart';
=======
import 'package:pas_mobile/app/routes/routes.dart';
>>>>>>> 39ac158445c2740672d59e28508bfa1b78d79fd4

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PAS Mobile',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: routes,
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 39ac158445c2740672d59e28508bfa1b78d79fd4
