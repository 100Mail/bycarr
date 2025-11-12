import 'package:flutter/material.dart';

class LatestSalesSection extends StatelessWidget {
  const LatestSalesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final double screenWidth = size.width;
    final double screenHeight = size.height;

    final List<Map<String, String>> sales = [
      {
        'image': 'assets/images/car1.jpg',
        'title': 'Zephania Mcintosh',
        'price': '183.00',
        'location': 'Location not available',
      },
      {
        'image': 'assets/images/car1.jpg',
        'title': 'Rider',
        'price': '160,000.00',
        'location': 'Location not available',
      },
      {
        'image': 'assets/images/car1.jpg',
        'title': 'Bajaj',
        'price': '10.00',
        'location': 'Kathmandu',
      },
      {
        'image': 'assets/images/car1.jpg',
        'title': 'Sport',
        'price': '250,000.00',
        'location': 'Bargachi',
      },
    ];

    return Container(
      color: const Color(0xFFe0e0e0),
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.03),
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
                      "Latest Sales",
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

          // 🏎️ Cards List
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: screenWidth * 0.03),
            child: Row(
              children: sales.map((sale) {
                return _SaleCard(
                  image: sale['image']!,
                  title: sale['title']!,
                  price: sale['price']!,
                  location: sale['location']!,
                  screenWidth: screenWidth,
                  screenHeight: screenHeight,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}

class _SaleCard extends StatelessWidget {
  final String image;
  final String title;
  final String price;
  final String location;
  final double screenWidth;
  final double screenHeight;

  const _SaleCard({
    required this.image,
    required this.title,
    required this.price,
    required this.location,
    required this.screenWidth,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenWidth * 0.45,
      margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenWidth * 0.02),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            spreadRadius: 2,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenWidth * 0.02),
                  topRight: Radius.circular(screenWidth * 0.02),
                ),
                child: Image.asset(
                  image,
                  height: screenHeight * 0.18,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: screenHeight * 0.01,
                left: screenWidth * 0.02,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.02,
                    vertical: screenHeight * 0.005,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.green.shade700,
                    borderRadius: BorderRadius.circular(screenWidth * 0.05),
                  ),
                  child: Text(
                    "✓ VERIFIED BY BYCARR",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),

          // 🧾 Info
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.03),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.037,
                  ),
                ),
                SizedBox(height: screenHeight * 0.005),
                Text(
                  "Rs. $price",
                  style: TextStyle(
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.035,
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xFF6D0019)),
                    foregroundColor: const Color(0xFF6D0019),
                    minimumSize: Size(double.infinity, screenHeight * 0.045),
                  ),
                  child: Text(
                    "View Details →",
                    style: TextStyle(fontSize: screenWidth * 0.035),
                  ),
                ),
                SizedBox(height: screenHeight * 0.007),
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      size: screenWidth * 0.035,
                      color: Colors.grey,
                    ),
                    SizedBox(width: screenWidth * 0.01),
                    Expanded(
                      child: Text(
                        location,
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: screenWidth * 0.03,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
