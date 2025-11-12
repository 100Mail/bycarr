import 'package:flutter/material.dart';

class FooterSection extends StatelessWidget {
  const FooterSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: double.infinity,
      color: const Color(0xFF660022),
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
      child: Center(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 1200),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                spacing: 40,
                runSpacing: 20,
                alignment: WrapAlignment.spaceBetween,
                children: [
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
                    links: [
                      'Partner Signup',
                      'Partner Login',
                    ],
                  ),
                  const NewsletterSection(),
                ],
              ),

              const SizedBox(height: 40),
              const Divider(color: Colors.white30, thickness: 1),

              screenWidth < 600
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        SizedBox(height: 16),
                        Text(
                          "© 2025 Bike Sales. All Rights Reserved",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                        SizedBox(height: 6),
                        Text(
                          "Design & Developed By: Janaktech",
                          style: TextStyle(color: Colors.pinkAccent, fontSize: 12),
                        ),
                      ],
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "© 2025 Bike Sales. All Rights Reserved",
                          style: TextStyle(color: Colors.white70, fontSize: 12),
                        ),
                        Text(
                          "Design & Developed By: Janaktech",
                          style: TextStyle(color: Colors.pinkAccent, fontSize: 12),
                        ),
                      ],
                    ),
            ],
          ),
        ),
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
    return SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 12),
          ...links.map(
            (link) => Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                '› $link',
                style: const TextStyle(color: Colors.white70, fontSize: 13),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NewsletterSection extends StatelessWidget {
  const NewsletterSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Subscribe Newsletter",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16)),
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
                    child: Icon(Icons.arrow_forward, color: Colors.white, size: 18),
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
