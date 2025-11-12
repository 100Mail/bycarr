import 'package:flutter/material.dart';

class PopularBrands extends StatelessWidget {
  const PopularBrands({super.key});

  final List<Map<String, String>> brands = const [
    {'name': 'Hero', 'logo': 'assets/brands/hero.png'},
    {'name': 'Honda', 'logo': 'assets/brands/honda.png'},
    {'name': 'Bajaj', 'logo': 'assets/brands/bajaj.png'},
    {'name': 'Yamaha', 'logo': 'assets/brands/yamaha.png'},
    {'name': 'TVS', 'logo': 'assets/brands/tvs.png'},
    {'name': 'Suzuki', 'logo': 'assets/brands/suzuki.png'},
    {'name': 'Royal Enfield', 'logo': 'assets/brands/royal_enfield.png'},
    {'name': 'Jawa', 'logo': 'assets/brands/jawa.png'},
    {'name': 'KTM', 'logo': 'assets/brands/ktm.png'},
    {'name': 'BMW bike', 'logo': 'assets/brands/bmw.png'},
    {'name': 'Kawasaki', 'logo': 'assets/brands/kawasaki.png'},
    {'name': 'Maruti Suzuki', 'logo': 'assets/brands/maruti_suzuki.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    int crossAxisCount = 3;
    if (screenWidth > 600) crossAxisCount = 4;
    if (screenWidth > 900) crossAxisCount = 5;

    return Container(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.025),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: Colors.red,
                      size: screenWidth * 0.035,
                    ),
                    SizedBox(width: screenWidth * 0.015),
                    Text(
                      "Most Popular Brands",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Text(
                  "View all ›",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: screenHeight * 0.015),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.04),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                mainAxisSpacing: screenWidth * 0.02,
                crossAxisSpacing: screenWidth * 0.02,
                childAspectRatio: 2.5,
              ),
              itemCount: brands.length,
              itemBuilder: (context, index) {
                final brand = brands[index];
                return Container(
                  padding: EdgeInsets.all(screenWidth * 0.025),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(screenWidth * 0.02),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        brand['logo']!,
                        height: screenHeight * 0.03,
                        width: screenHeight * 0.03,
                      ),
                      SizedBox(width: screenWidth * 0.02),
                      Flexible(
                        child: Text(
                          brand['name']!,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: screenWidth * 0.035),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
