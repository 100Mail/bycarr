import 'package:flutter/material.dart';

class NearbyCities extends StatelessWidget {
  const NearbyCities({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenWidth = size.width;
    final screenHeight = size.height;

    int crossAxisCount = 2;
    if (screenWidth > 600) crossAxisCount = 3;
    if (screenWidth > 900) crossAxisCount = 4;

    return SafeArea(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.04,
          vertical: screenHeight * 0.03,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on,
                      color: Colors.pinkAccent,
                      size: screenWidth * 0.035,
                    ),
                    SizedBox(width: screenWidth * 0.015),
                    Text(
                      "Nearby Cities",
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
            SizedBox(height: screenHeight * 0.02),

            screenWidth < 600
                ? SizedBox(
                    height: screenHeight * 0.18,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: cities.length,
                      separatorBuilder: (_, __) =>
                          SizedBox(width: screenWidth * 0.04),
                      itemBuilder: (context, index) {
                        final city = cities[index];
                        return CityCard(
                          image: city['image']!,
                          name: city['name']!,
                          width: screenWidth * 0.35,
                          height: screenHeight * 0.12,
                        );
                      },
                    ),
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      mainAxisSpacing: screenWidth * 0.02,
                      crossAxisSpacing: screenWidth * 0.02,
                      childAspectRatio: 1.2,
                    ),
                    itemCount: cities.length,
                    itemBuilder: (context, index) {
                      final city = cities[index];
                      return CityCard(
                        image: city['image']!,
                        name: city['name']!,
                        width: screenWidth * 0.25,
                        height: screenHeight * 0.12,
                      );
                    },
                  ),

            SizedBox(height: screenHeight * 0.05),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.pinkAccent,
                      size: screenWidth * 0.035,
                    ),
                    SizedBox(width: screenWidth * 0.015),
                    Text(
                      "Why Choose Us",
                      style: TextStyle(
                        fontSize: screenWidth * 0.045,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenHeight * 0.02),

            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: features.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: screenWidth < 600 ? 2 : 4,
                crossAxisSpacing: screenWidth * 0.025,
                mainAxisSpacing: screenWidth * 0.025,
                childAspectRatio: 1.2,
              ),
              itemBuilder: (context, index) {
                final feature = features[index];
                return FeatureCard(
                  icon: feature['icon'] as IconData,
                  title: feature['title'] as String,
                  subtitle: feature['subtitle'] as String,
                  screenWidth: screenWidth,
                );
              },
            ),

            SizedBox(height: screenHeight * 0.07),
          ],
        ),
      ),
    );
  }
}

class CityCard extends StatelessWidget {
  final String image;
  final String name;
  final double width;
  final double height;

  const CityCard({
    super.key,
    required this.image,
    required this.name,
    required this.width,
    required this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.network(
              image,
              height: height,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            alignment: Alignment.center,
            child: Text(
              name,
              style: const TextStyle(fontWeight: FontWeight.w600),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final double screenWidth;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.screenWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(screenWidth * 0.025),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.pinkAccent, size: screenWidth * 0.06),
          SizedBox(height: screenWidth * 0.02),
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.035,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: screenWidth * 0.01),
          Text(
            subtitle,
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: screenWidth * 0.03,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

final List<Map<String, String>> cities = [
  {'name': 'Biratnagar', 'image': 'https://picsum.photos/400?1'},
  {'name': 'Chitwan', 'image': 'https://picsum.photos/400?2'},
  {'name': 'Kathmandu', 'image': 'https://picsum.photos/400?3'},
  {'name': 'Pokhara', 'image': 'https://picsum.photos/400?4'},
];

final List<Map<String, dynamic>> features = [
  {
    'icon': Icons.workspace_premium,
    'title': "Nepal's #1",
    'subtitle': "Largest Bikes Sale",
  },
  {
    'icon': Icons.directions_bike,
    'title': "Bikes Sale",
    'subtitle': "Everyday Bikes Sale",
  },
  {
    'icon': Icons.local_offer,
    'title': "Affordable Price",
    'subtitle': "Stay updated pay less",
  },
  {
    'icon': Icons.compare,
    'title': "Compare Bikes",
    'subtitle': "Decode the right bikes",
  },
];
