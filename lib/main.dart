import 'package:flutter/material.dart';
import 'package:flutter_application/ui/splash_view.dart';

import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Casino',
      theme: Theme.of(context).copyWith(
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: AppColors.white
        ),
        scaffoldBackgroundColor: AppColors.white
      ),
      debugShowCheckedModeBanner: false,
      home: const SplashView(),
    );
  }
}