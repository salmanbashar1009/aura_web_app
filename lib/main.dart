import 'package:aura_web_app/helper/routes_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'helper/get_di.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await di.init();
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Property',
        theme: ThemeData(
          useMaterial3: false,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        getPages: getPages,
        initialRoute: Routes.buyPage.value,
    );
  }
}

