import 'package:bycarr/routes/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ByCarrApp());
}

class ByCarrApp extends StatelessWidget {
  const ByCarrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'ByCarr',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      routerConfig: AppRoutes.goRouter,
    );
  }
}
