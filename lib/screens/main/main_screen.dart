import 'package:flutter/material.dart';
import 'package:momo_web/controllers/MenuController.dart';
import 'package:momo_web/responsive.dart';
import 'package:momo_web/screens/components/side_menu.dart';
import 'package:momo_web/screens/dashboard/dashboard_screen.dart';
import 'package:provider/src/provider.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<MenuController>().scaffoldKey,
      drawer: SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                // It takes 1/6 part of the screen(default: flex = 1)
                child: SideMenu(),
              ),
            Expanded(
              // It takes 5/6 part of the screen
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
