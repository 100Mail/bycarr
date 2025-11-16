import 'package:bycarr/widgets/footer/aboutus_page.dart';
import 'package:bycarr/widgets/footer/disclaimer_page.dart';
import 'package:bycarr/widgets/footer/help_supprt.dart';
import 'package:bycarr/widgets/footer/privacy_policy.dart';
import 'package:bycarr/widgets/footer/returncancellation_page.dart';
import 'package:bycarr/widgets/footer/shippingdelivery_page.dart';
import 'package:bycarr/widgets/footer/terms_conditionpage.dart';
import 'package:flutter/material.dart';
import '../screens/signin_screen.dart';
import 'footer/contact_emailpage.dart';
import 'footer/customer_care_page.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    return Container(
      width: double.infinity,
      color: const Color(0xFF660022),
      padding: EdgeInsets.symmetric(vertical: h * 0.04, horizontal: w * 0.05),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Wrap(
            spacing: w * 0.05,
            runSpacing: h * 0.02,
            children: const [
              FooterColumn(
                title: "Let's Help You",
                links: [
                  'Shipping & Delivery',
                  'Return & Cancellations',
                  'Send us an Email',
                  'Customer Care',
                  'Privacy Policy',
                ],
              ),
              FooterColumn(
                title: "Who We Are",
                links: [
                  'About Us',
                  'Privacy Policy',
                  'Terms & Conditions',
                  'Help & Support',
                  'Disclaimer Policy',
                ],
              ),
              FooterColumn(
                title: "Become a Partner",
                links: ['Partner Signup', 'Partner Login'],
              ),
              NewsletterSection(),
            ],
          ),

          SizedBox(height: h * 0.04),
          const Divider(color: Colors.white30, thickness: 1),
          SizedBox(height: h * 0.015),

          const Text(
            "© 2025 Bike Sales. All Rights Reserved",
            style: TextStyle(color: Colors.white70, fontSize: 12),
          ),
          const SizedBox(height: 6),
          Text(
            "Design & Developed By: Janaktech",
            style: TextStyle(color: Colors.pinkAccent, fontSize: 12),
          ),
        ],
      ),
    );
  }
}

class FooterColumn extends StatelessWidget {
  final String title;
  final List<String> links;

  const FooterColumn({super.key, required this.title, required this.links});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return SizedBox(
      width: w * 0.45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          ...links.map(
            (link) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => getPageForLink(link)),
                  );
                },
                child: Text(
                  '› $link',
                  style: const TextStyle(color: Colors.white70, fontSize: 13),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getPageForLink(String link) {
    switch (link) {
      case 'Shipping & Delivery':
        return const ShippingDeliveryPage();
      case 'Return & Cancellations':
        return const ReturnCancellationPage();
      case 'Send us an Email':
        return const ContactEmailPage();
      case 'Customer Care':
        return const CustomerCarePage();
      case 'Privacy Policy':
        return const PrivacyPolicyPage();
      case 'About Us':
        return const AboutUsPage();
      case 'Terms & Conditions':
        return const TermsConditionsPage();
      case 'Help & Support':
        return const HelpSupportPage();
      case 'Disclaimer Policy':
        return const DisclaimerPage();
      case 'Partner Signup':
        return const SignInPage();
      case 'Partner Login':
        return const SignInPage();
      default:
        return const Scaffold(body: Center(child: Text('Page not found')));
    }
  }
}

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return SizedBox(
      width: w * 0.9,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Subscribe Newsletter",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 12),
          const Text(
            "Sign up to our newsletter to receive promotions and more.",
            style: TextStyle(color: Colors.white70, fontSize: 13),
          ),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Enter your email",
                      hintStyle: TextStyle(fontSize: 13),
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.pinkAccent,
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
