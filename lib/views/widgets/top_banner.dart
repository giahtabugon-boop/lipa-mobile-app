import 'package:flutter/material.dart';
import 'package:lipa_mobile_app/views/home/constants/app_colors.dart';
import 'package:lipa_mobile_app/views/home/constants/app_sizes.dart';
import 'package:lipa_mobile_app/views/home/constants/app_spacing.dart';
import 'package:lipa_mobile_app/views/home/constants/app_text_styles.dart';

class TopBanner extends StatelessWidget {
  const TopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return SizedBox(
      height: AppSizes.scale(220),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "https://lipa.gov.ph/wp-content/uploads/2025/08/WelcomeBanner2-1.jpg",
            fit: BoxFit.cover,
          ),
          Container(color: Colors.black.withOpacity(0.45)),
          Padding(
            padding: EdgeInsets.all(AppSpacing.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _searchBar(),
                const Spacer(),
                Text(
                  'Your Partner in Public\nService',
                  style: AppTextStyles.heading,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchBar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: 'Search',
          border: InputBorder.none,
        ),
      ),
    );
  }
}
