import 'package:flutter/material.dart';

import '../export_widgets.dart';

class ReturnCancellationPage extends StatelessWidget {
  static const String routeName = '/returncancellation_screen';
  const ReturnCancellationPage({super.key});

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
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Cancel Items",
                    style: TextStyle(
                      fontSize: responsiveFont(0.06),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.02)),

                  Text(
                    "Thank you for using Bycarr (“we,” “us,” or “our”). This Refund Policy outlines the terms and conditions regarding refunds for transactions conducted on our platform. By using our Website, you agree to this Refund Policy.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.03)),

                  Text(
                    "1. No Refunds for Buyer-Seller Transactions",
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "Bycarr is a platform that facilitates the buying and selling of cars and bikes. We do not directly sell any vehicles or products listed on the Website. All transactions are conducted directly between buyers and sellers. As such, we do not offer refunds for any transactions completed through our platform.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.03)),

                  Text(
                    "2. Disputes Between Buyers and Sellers",
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "If you encounter any issues with a transaction (e.g., misrepresentation of a vehicle's condition, non-delivery, or other disputes), you must resolve the matter directly with the other party (buyer or seller). Bycarr is not responsible for mediating or resolving disputes between users.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "We recommend that buyers and sellers:\n\n"
                    "- Communicate clearly and document all agreements.\n"
                    "- Inspect vehicles thoroughly before completing a transaction.\n"
                    "- Use secure payment methods to protect against fraud.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.03)),

                  Text(
                    "3. Refunds for Subscription or Membership Fees",
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "If you have purchased a subscription or membership plan on Bycarr, you may be eligible for a refund under the following conditions:\n\n"
                    "- The refund request is made within X days of the purchase.\n"
                    "- The subscription or membership has not been used or activated.\n"
                    "- The refund request is due to a technical error or issue caused by Bycarr.\n\n"
                    "To request a refund for a subscription or membership fee, please contact us at matinsoftech@gmail.com with your order details and reason for the request.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.03)),

                  Text(
                    "4. Cancellation of Services",
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "If you wish to cancel a subscription or membership, you may do so at any time. However, no refunds will be provided for the remaining unused portion of the subscription period unless otherwise stated in this policy.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.03)),

                  Text(
                    "5. Processing Refunds",
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "If a refund is approved, it will be processed within X business days using the original payment method. It may take additional time for the refund to reflect in your account depending on your bank or payment provider.",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.03)),

                  Text(
                    "6. Contact Us",
                    style: TextStyle(
                      fontSize: responsiveFont(0.05),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: vSpace(0.01)),
                  Text(
                    "If you have any questions or concerns about this Refund Policy, please contact us at:\n\n"
                    "Email: matinsoftech@gmail.com\n"
                    "Phone: 9800971310",
                    style: TextStyle(fontSize: responsiveFont(0.04)),
                  ),

                  SizedBox(height: vSpace(0.05)),
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
