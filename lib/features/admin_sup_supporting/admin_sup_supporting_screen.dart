import 'package:flutter/material.dart';
import 'package:tanagham/core/helpers/spacing.dart';
import 'package:tanagham/core/widgets/custom_return_app_bar.dart';
import 'package:tanagham/features/admin_sup_supporting/widgets/container_of_sup_supporting.dart';
import 'package:tanagham/features/admin_sup_supporting/widgets/second_container_of_sup_supporting.dart';

class AdminSupSupportingScreen extends StatelessWidget {
  const AdminSupSupportingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            verticalSpace(50),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 28),
              child: CustomReternAppBar(title: 'Supporting'),
            ),
            verticalSpace(30),
            const ContanierOfSupSupporting(),
            verticalSpace(70),
            const SecondContainerOfSupSupporting()
          ],
        ),
      ),
    );
  }
}
