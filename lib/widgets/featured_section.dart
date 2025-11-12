import 'package:flutter/material.dart';

class FeaturedSection extends StatelessWidget {
  const FeaturedSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Column(
      children: [
        SizedBox(height: screenHeight * 0.02),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.circle, color: Colors.red, size: 14),
                  SizedBox(width: screenWidth * 0.015),
                  const Text(
                    "Featured Services",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Text("View all ›", style: TextStyle(color: Colors.grey)),
            ],
          ),
        ),
        SizedBox(height: screenHeight * 0.015),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(width: screenWidth * 0.04),
              const _BrandChip(label: 'Hero'),
              const _BrandChip(label: 'Honda'),
              const _BrandChip(label: 'Bajaj'),
              const _BrandChip(label: 'Yamaha'),
              const _BrandChip(label: 'TVS'),
              const _BrandChip(label: 'Suzuki'),
              SizedBox(width: screenWidth * 0.04),
            ],
          ),
        ),
      ],
    );
  }
}

class _BrandChip extends StatelessWidget {
  final String label;
  const _BrandChip({required this.label});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
      child: Chip(
        label: Text(label, style: const TextStyle(fontSize: 13)),
        backgroundColor: Colors.grey.shade200,
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.03,
          vertical: screenWidth * 0.01,
        ),
      ),
    );
  }
}
