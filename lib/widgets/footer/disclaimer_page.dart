import 'package:flutter/material.dart';

import '../export_widgets.dart';

class DisclaimerPage extends StatelessWidget {
  const DisclaimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(), 
            const CategorySection(), 

            // Page-specific content
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Delivery and Shipping Policy',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Welcome to our Delivery & Shipping Policy. This page outlines the terms and conditions regarding delivery and shipping of vehicles listed on our platform.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 20),
                  Text(
                    '1. Platform Role',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Our website is a marketplace connecting buyers and sellers of vehicles. We do not own, sell, or deliver any vehicles.',
                    style: TextStyle(fontSize: 16),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '2. Delivery and Shipping Arrangements',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Options for delivery: Local Pickup, Third-Party Shipping, Seller-Assisted Delivery.',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),

            const NearbyCitiesAndFooter(), 
          ],
        ),
      ),
    );
  }
}
