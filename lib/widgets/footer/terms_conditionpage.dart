import 'package:flutter/material.dart';
import '../export_widgets.dart';

class TermsConditionsPage extends StatelessWidget {
  static const String routeName = '/termscondition_screen';
  const TermsConditionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const CategorySection(),

            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                 
                ],
              ),
            ),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
