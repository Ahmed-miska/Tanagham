import 'package:flutter/material.dart';
import 'package:tanagham/features/home_admin/home_admin_screen.dart';

import 'package:tanagham/main.dart';

class Tanagham extends StatelessWidget {
  const Tanagham({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tanagham',
      theme: ThemeData(),
      navigatorKey: navigator,
      home: const HomeAdminScreen(),
    );
  }
}
