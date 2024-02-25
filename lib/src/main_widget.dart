import 'package:flutter/material.dart';

import 'main_routes.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Playground',
      routerConfig: routes,
    );
  }
}
