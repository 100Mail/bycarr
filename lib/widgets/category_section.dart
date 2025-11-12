import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: screenWidth * 0.04),
            _CategoryItem(
              icon: Icons.motorcycle,
              label: 'Bikes',
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            _CategoryItem(
              icon: Icons.electric_scooter,
              label: 'Scooters',
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            _CategoryItem(
              icon: Icons.directions_car,
              label: 'Hatchbacks',
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            _CategoryItem(
              icon: Icons.car_rental,
              label: 'Sedans',
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            _CategoryItem(
              icon: Icons.directions_car_filled,
              label: 'SUVs',
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            _CategoryItem(
              icon: Icons.local_shipping,
              label: 'Pickup Truck',
              screenWidth: screenWidth,
              screenHeight: screenHeight,
            ),
            SizedBox(width: screenWidth * 0.04),
          ],
        ),
      ),
    );
  }
}

class _CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final double screenWidth;
  final double screenHeight;

  const _CategoryItem({
    required this.icon,
    required this.label,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    final iconRadius = screenWidth * 0.08;
    final iconSize = screenWidth * 0.07;
    final fontSize = screenWidth * 0.032;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
      child: Column(
        children: [
          CircleAvatar(
            radius: iconRadius,
            backgroundColor: Colors.grey.shade100,
            child: Icon(icon, color: const Color(0xFF6D0019), size: iconSize),
          ),
          SizedBox(height: screenHeight * 0.008),
          Text(
            label,
            style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
