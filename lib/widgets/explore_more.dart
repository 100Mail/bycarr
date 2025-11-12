import 'package:flutter/material.dart';

class ExploreMore extends StatelessWidget {
  const ExploreMore({super.key});

  final List<Map<String, dynamic>> bikes = const [
    {
      'name': 'Royal Enfield Classic 350',
      'price': 300000.0,
      'image': 'assets/bikes/royal_enfield.png',
      'location': 'Biratnagar 56613, Nepal',
    },
    {
      'name': 'Jawa 42 Bobber',
      'price': 219000.0,
      'image': 'assets/bikes/jawa.png',
      'location': 'Biratnagar 56613, Nepal',
    },
    {
      'name': 'BMW G 310 GS',
      'price': 400000.0,
      'image': 'assets/bikes/bmw_g310.png',
      'location': 'Biratnagar 56613, Nepal',
    },
    {
      'name': 'Hero XPulse 200',
      'price': 340000.0,
      'image': 'assets/bikes/hero_xpulse.png',
      'location': 'Biratnagar 56613, Nepal',
    },
    {
      'name': 'BMW G 310 GS',
      'price': 400000.0,
      'image': 'assets/bikes/bmw_g310.png',
      'location': 'Biratnagar 56613, Nepal',
    },
    {
      'name': 'Hero XPulse 200',
      'price': 340000.0,
      'image': 'assets/bikes/hero_xpulse.png',
      'location': 'Biratnagar 56613, Nepal',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Container(
      color: const Color(0xFFF5F6F8),
      padding: EdgeInsets.symmetric(
        vertical: screenHeight * 0.02,
        horizontal: screenWidth * 0.04,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Header Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const Icon(Icons.circle, color: Colors.red, size: 14),
                  const SizedBox(width: 8),
                  Text(
                    "Explore More",
                    style: TextStyle(
                      fontSize: screenWidth * 0.045,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View all ›",
                  style: TextStyle(color: Colors.black54),
                ),
              ),
            ],
          ),

          const SizedBox(height: 10),

          /// Horizontal 2-row Grid
          SizedBox(
            height: screenHeight * 0.62, // controls grid height
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bikes.length,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, //  2 rows
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.98,
              ),
              itemBuilder: (context, index) {
                final bike = bikes[index];
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade300),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 6,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: Image.asset(
                          bike['image'],
                          height: screenHeight * 0.14,
                          width: double.infinity,
                          fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => Container(
                            height: screenHeight * 0.14,
                            color: Colors.grey.shade100,
                            child: const Icon(
                              Icons.image,
                              size: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ),

                      /// Details Section
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    bike['name'],
                                    style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14,
                                    ),
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  const SizedBox(height: 2),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.currency_rupee,
                                        size: 14,
                                        color: Colors.green,
                                      ),
                                      Text(
                                        bike['price'].toStringAsFixed(2),
                                        style: const TextStyle(fontSize: 13),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Column(
                                children: [
                                  SizedBox(
                                    width: double.infinity,
                                    height: 30,
                                    child: OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        side: BorderSide(
                                          color: Colors.red.shade900,
                                          width: 1.2,
                                        ),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            6,
                                          ),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: const Text(
                                        'View Details →',
                                        style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(height: 4),
                                  Row(
                                    children: const [
                                      Icon(
                                        Icons.location_on_outlined,
                                        size: 14,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 4),
                                      Expanded(
                                        child: Text(
                                          "Biratnagar 56613, Nepal",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey,
                                          ),
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
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
