import 'package:bycarr/widgets/export_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const NavBar(),
            const CategorySection(),
            HeroSection(),
            const FeaturedSection(),
            const EmptyState(),
            const LatestSalesSection(),
            const PopularBrands(),
            const ExploreMore(),
            const NearbyCities(),
            const FooterSection(),
          ],
        ),
      ),
    );
  }
}
