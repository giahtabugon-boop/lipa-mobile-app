import 'package:flutter/material.dart';
import 'package:lipa_mobile_app/views/home/constants/app_colors.dart';
import 'package:lipa_mobile_app/views/home/constants/app_spacing.dart';
import 'package:lipa_mobile_app/views/home/constants/app_sizes.dart';
import 'package:lipa_mobile_app/views/home/constants/app_text_styles.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    final items = [
      {'icon': 'assets/icons/services.png', 'label': 'Services'},
      {'icon': 'assets/icons/citizen_guide.png', 'label': 'Citizen\nGuide'},
      {'icon': 'assets/icons/e_services.png', 'label': 'E-Services'},
      {'icon': 'assets/icons/emergency.png', 'label': 'Emergency'},
      {'icon': 'assets/icons/utilities.png', 'label': 'Utilities'},
      {'icon': 'assets/icons/transport.png', 'label': 'Transport'},
      {'icon': 'assets/icons/business.png', 'label': 'Business'},
      {'icon': 'assets/icons/view_more.png', 'label': 'View More'},
    ];

    return Padding(
      padding: EdgeInsets.all(AppSpacing.md),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: AppSizes.isTablet ? 6 : 4,
          mainAxisSpacing: AppSpacing.md,
          crossAxisSpacing: AppSpacing.md,
          childAspectRatio: 0.9,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: AppSizes.scale(52),
                height: AppSizes.scale(52),
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(AppSpacing.sm),
                child: Image.asset(
                  items[index]['icon']!,
                  fit: BoxFit.contain,

                  // 🔥 If your PNG icons are white with transparency,
                  // keep the next line. Otherwise REMOVE it.
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: AppSpacing.xs),
              Text(
                items[index]['label']!,
                textAlign: TextAlign.center,
                style: AppTextStyles.body,
              ),
            ],
          );
        },
      ),
    );
  }
}
