import 'package:flutter/material.dart';
import '../export_widgets.dart';

class ShippingDeliveryPage extends StatelessWidget {
  static const String routeName = '/shippingdelivery_screen';
  const ShippingDeliveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final w = size.width;
    final h = size.height;

    double responsiveFont(double factor) => w * factor;

    double vSpace(double factor) => h * factor;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const CategorySection(),

            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: w * 0.05,
                vertical: h * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Delivery and Shipping Policy',
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    'Welcome to Bycarr ("we," "us," or "our"). This Delivery and Shipping Policy outlines the terms and conditions regarding the delivery and shipping of vehicles (cars and bikes) listed on our platform. By using our Website, you agree to this policy.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.025)),

                  Text(
                    '1. Platform Role',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '[Your Website Name] is a marketplace that connects buyers and sellers of cars and bikes. We do not own, sell, or deliver any vehicles listed on the Website. All transactions, including delivery and shipping arrangements, are the sole responsibility of the buyer and seller.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '2. Delivery and Shipping Arrangements',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Buyers and sellers are responsible for coordinating the delivery or shipping of vehicles. [Your Website Name] is not involved in this process and does not guarantee the condition, timing, or safety of any delivery or shipment.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    'Options for Delivery/Shipping:',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '1. Local Pickup: Buyers and sellers can arrange for the buyer to pick up the vehicle directly from the seller\'s location.\n'
                    '2. Third-Party Shipping Services: Buyers and sellers may choose to use a third-party shipping service to transport the vehicle.\n'
                    '3. Seller-Assisted Delivery: Sellers may offer to deliver the vehicle to the buyer at an agreed-upon location and cost.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '3. Responsibilities of Buyers and Sellers',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Sellers:\n'
                    '- Clearly specify in the listing whether the vehicle is available for local pickup or if delivery/shipping options are available.\n'
                    '- Provide accurate details about the vehicle\'s location.\n'
                    '- Communicate openly with the buyer about delivery timelines and costs.\n\n'
                    'Buyers:\n'
                    '- Confirm the delivery or shipping method with the seller before completing the transaction.\n'
                    '- Inspect the vehicle upon delivery to ensure it matches the description provided in the listing.\n'
                    '- Pay any agreed-upon delivery or shipping costs directly to the seller or third-party service provider.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '4. Third-Party Shipping Services',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'If buyers and sellers choose to use a third-party shipping service, they are responsible for:\n'
                    '- Researching and selecting a reputable shipping provider.\n'
                    '- Ensuring the vehicle is properly insured during transit.\n'
                    '- Covering all shipping costs and fees.\n\n'
                    '[Your Website Name] is not responsible for any damages, delays, or issues arising from the use of third-party shipping services.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '5. Vehicle Inspection Upon Delivery',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'We strongly recommend that buyers inspect the vehicle thoroughly upon delivery or pickup. '
                    'Once the vehicle is accepted, [Your Website Name] is not responsible for any discrepancies or issues.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '6. International Transactions',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'For international transactions, buyers and sellers are responsible for:\n'
                    '- Complying with all import/export laws and regulations.\n'
                    '- Paying any customs duties, taxes, or fees.\n'
                    '- Arranging international shipping through a reliable provider.\n\n'
                    '[Your Website Name] does not facilitate international shipping or assume any liability for cross-border transactions.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '7. Disputes Related to Delivery or Shipping',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'If a dispute arises regarding delivery or shipping (e.g., delays, damages, or miscommunication), '
                    'buyers and sellers must resolve the issue directly. [Your Website Name] is not responsible for mediating or resolving such disputes.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '8. Contact Us',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'If you have any questions or concerns about this Delivery and Shipping Policy, please contact us at:\n'
                    'Email: matinsoftech@gmail.com\n'
                    'Phone: 9800971310',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
                  SizedBox(height: vSpace(0.015)),

                  Text(
                    '9. Changes to This Policy',
                    style: TextStyle(
                      fontSize: responsiveFont(0.045),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'We reserve the right to update or modify this Delivery and Shipping Policy at any time. '
                    'Any changes will be posted on this page with an updated "Effective Date." '
                    'We encourage you to review this policy periodically to stay informed about our guidelines.',
                    style: TextStyle(fontSize: responsiveFont(0.037)),
                  ),
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
