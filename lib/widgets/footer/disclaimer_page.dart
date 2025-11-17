import 'package:bycarr/widgets/footer/privacy_reusablewidget.dart';
import 'package:flutter/material.dart';

import '../export_widgets.dart';

class DisclaimerPage extends StatelessWidget {
  static const String routeName = '/disclaimer_screen';
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const CategorySection(),
            PrivacyReusableWidget(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
