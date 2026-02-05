import 'package:flutter/material.dart';
import 'package:lipa_mobile_app/views/home/constants/app_sizes.dart';
import 'package:lipa_mobile_app/views/home/constants/app_colors.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      backgroundColor: AppColors.white,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.textSecondary,
      selectedFontSize: AppSizes.scale(11),
      unselectedFontSize: AppSizes.scale(10),
      currentIndex: 2, // Home selected
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.build), label: 'Service'),
        BottomNavigationBarItem(icon: Icon(Icons.article), label: 'News'),
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.warning), label: 'Emergency'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
      ],
    );
  }
}
