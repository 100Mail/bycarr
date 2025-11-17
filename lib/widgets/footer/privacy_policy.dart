import 'package:flutter/material.dart';
import '../export_widgets.dart';
import 'export_footerwidgets.dart';

class PrivacyPolicyPage extends StatelessWidget {
  static const String routeName = '/privacypolicy_screen';
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final responsiveFont = (double size) => size * (screenWidth / 430);

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
