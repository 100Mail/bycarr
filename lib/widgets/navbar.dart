import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../screens/export_screens.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final logoHeight = screenHeight * 0.045;
    final searchHeight = screenHeight * 0.05;
    final buttonPadding = EdgeInsets.symmetric(
      horizontal: screenWidth * 0.035,
      vertical: screenHeight * 0.006,
    );

    return Container(
      color: const Color(0xFF6D0019),
      padding: EdgeInsets.symmetric(
        horizontal: screenWidth * 0.03,
        vertical: screenHeight * 0.01,
      ),
      child: SafeArea(
        child: Row(
          children: [
            GestureDetector(
              onTap: () {
                context.push(HomeScreen.routeName);
              },
              child: Image.asset(
                'assets/images/bycarr_logo.png',
                height: logoHeight,
              ),
            ),

            SizedBox(width: screenWidth * 0.03),

            Expanded(
              child: Container(
                height: searchHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    SizedBox(width: screenWidth * 0.015),
                    Expanded(
                      child: TextField(
                        decoration: const InputDecoration(
                          isCollapsed: true,
                          hintText: 'Search By Make, Model, Type etc.',
                          hintStyle: TextStyle(
                            fontSize: 12,
                            color: Colors.grey,
                          ),
                          border: InputBorder.none,
                        ),
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                    PopupMenuButton<String>(
                      padding: EdgeInsets.zero,
                      icon: const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 20,
                      ),
                      onSelected: (value) {
                        debugPrint("Selected location: $value");
                      },
                      itemBuilder: (context) => const [
                        PopupMenuItem(
                          value: "Biratnagar",
                          child: Text("Biratnagar"),
                        ),
                        PopupMenuItem(value: "Chitwan", child: Text("Chitwan")),
                        PopupMenuItem(
                          value: "Kathmandu",
                          child: Text("Kathmandu"),
                        ),
                        PopupMenuItem(value: "Pokhara", child: Text("Pokhara")),
                      ],
                    ),
                    const Icon(Icons.search, color: Colors.grey, size: 18),
                    SizedBox(width: screenWidth * 0.015),
                  ],
                ),
              ),
            ),

            SizedBox(width: screenWidth * 0.025),

            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add, size: 14),
              label: const Text('Sell', style: TextStyle(fontSize: 13)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: const Color(0xFF6D0019),
                padding: buttonPadding,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),

            SizedBox(width: screenWidth * 0.02),

            GestureDetector(
              onTap: () {
                context.push(SignInPage.routeName);
              },
              child: Container(
                padding: EdgeInsets.all(screenWidth * 0.015),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 3,
                      offset: const Offset(0, 2),
                    ),
                  ],
                ),
                child: const Icon(
                  Icons.person_outline,
                  color: Color(0xFF6D0019),
                  size: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
