import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lipa_mobile_app/views/home//constants/app_colors.dart';
import 'package:lipa_mobile_app/views/home//constants/app_spacing.dart';
import 'package:lipa_mobile_app/views/home//constants/app_sizes.dart';
import 'package:lipa_mobile_app/views/home//constants/app_text_styles.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    final items = [
      ('assets/icons/services.svg', 'Services'),
      ('assets/icons/citizen_guide.svg', 'Citizen\nGuide'),
      ('assets/icons/e_services.svg', 'E-Services'),
      ('assets/icons/emergency.svg', 'Emergency'),
      ('assets/icons/utilities.svg', 'Utilities'),
      ('assets/icons/transport.svg', 'Transport'),
      ('assets/icons/business.svg', 'Business'),
      ('assets/icons/view_more.svg', 'View More'),
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
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: AppSizes.scale(52),
                height: AppSizes.scale(52),
                decoration: const BoxDecoration(
                  color: AppColors.secondary,
                  shape: BoxShape.circle,
                ),
                padding: EdgeInsets.all(AppSpacing.sm),
                child: SvgPicture.asset(
                  items[index].$1,
                  color: AppColors.white,
                ),
              ),
              SizedBox(height: AppSpacing.xs),
              Text(
                items[index].$2,
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
