import 'package:flutter/material.dart';

import '../export_widgets.dart';
import 'export_footerwidgets.dart';

class ContactEmailPage extends StatelessWidget {
  static const String routeName = '/contact_screen';
  const ContactEmailPage({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const CategorySection(),

          RetailerInquiryForm(),

            const FooterSection(),
          ],
        ),
      ),
    );
  }

  Widget buildField(String label, String placeholder) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            )),
        const SizedBox(height: 5),
        TextField(
          decoration: InputDecoration(
            hintText: placeholder,
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
          ),
        ),
      ],
    );
  }
}
