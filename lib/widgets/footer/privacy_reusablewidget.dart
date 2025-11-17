import 'package:flutter/material.dart';

class PrivacyReusableWidget extends StatelessWidget {
  
  static const String routeName = '/privacyreusable_screen';

  const PrivacyReusableWidget({super.key,});

  Widget bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("• "),
          Expanded(
            child: Text(
              text,
              style: TextStyle(fontSize:16),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Privacy Policy',
            style: TextStyle(
              fontSize:22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Welcome to Buycarr ("we", "our", "us"). Protecting your privacy is important to us. '
            'This Privacy Policy explains how we collect, use, and safeguard your information when you visit our website: sajilonirman.com. '
            'Please read it carefully. If you disagree with our terms, kindly refrain from using the site.',
            style: TextStyle(fontSize:16),
          ),
          SizedBox(height: height * 0.025),

          Text(
            'Information We Collect',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          bulletPoint(
              'Personal Information: Name, email, phone number, and address when you create an account or contact us.'),
          bulletPoint(
              'Payment Information: Secure payment details for processing orders.'),
          bulletPoint(
              'Automatically Collected Information: IP address, browser type, and visit timestamps.'),
          SizedBox(height: height * 0.025),

          Text(
            'How We Use Your Information',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          bulletPoint(
              'Processing Transactions: For order confirmation and customer support.'),
          bulletPoint(
              'Improving Services: To enhance website functionality and marketing efforts.'),
          bulletPoint(
              'Communication: For updates, inquiries, and promotional emails.'),
          bulletPoint('Fraud Prevention: To ensure secure transactions.'),
          SizedBox(height: height * 0.025),

          Text(
            'Sharing Your Information',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          bulletPoint(
              'Service Providers: Third parties assisting with website operations and payments.'),
          bulletPoint('Legal Compliance: Disclosure as required by law.'),
          bulletPoint(
              'Business Transfers: As part of a merger or acquisition.'),
          SizedBox(height: height * 0.025),

          Text(
            'Cookies & Tracking',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          bulletPoint(
              'Enhancing User Experience: To remember preferences and improve usability.'),
          bulletPoint(
              'Traffic Analysis: To optimize website performance through analytics tools.'),
          SizedBox(height: height * 0.025),

          Text(
            'Your Rights',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          bulletPoint('Access: Request a copy of your personal information.'),
          bulletPoint('Correction: Request corrections for inaccurate details.'),
          bulletPoint('Deletion: Request data deletion (subject to legal exceptions).'),
          bulletPoint('Opt-Out: Unsubscribe from promotional emails.'),
          SizedBox(height: height * 0.025),

          Text(
            'Third-Party Links',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          Text(
            'We may include links to third-party websites. We are not responsible for their privacy practices. '
            'Please review their policies before sharing information.',
            style: TextStyle(fontSize:16),
          ),
          SizedBox(height: height * 0.025),

          Text(
            'Policy Updates',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          Text(
            'We may update this Privacy Policy periodically. Changes will be posted here with an updated "Effective Date".',
            style: TextStyle(fontSize:16),
          ),
          SizedBox(height: height * 0.025),

          Text(
            'Contact Us',
            style: TextStyle(
              fontSize:18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: height * 0.008),
          Text(
            'If you have any questions, feel free to reach out to us:\n\n'
            'Email: matinsoftech@gmail.com\n'
            'Phone: 9800971310',
            style: TextStyle(fontSize:16),
          ),
          SizedBox(height: height * 0.025),

          Text(
            'Effective Date: 2024/10/21',
            style: TextStyle(
              fontSize:16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
