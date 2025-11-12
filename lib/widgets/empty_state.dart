import 'package:flutter/material.dart';

class EmptyState extends StatelessWidget {
  const EmptyState({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      children: [
        SizedBox(height: screenHeight * 0.02),
        Image.asset(
          'assets/images/no_item.png',
          height: screenHeight * 0.15,
          width: screenWidth * 0.3,
        ),
        SizedBox(height: screenHeight * 0.01),
        const Text('No Item Found', style: TextStyle(color: Colors.black54)),
        SizedBox(height: screenHeight * 0.05),
      ],
    );
  }
}
