import 'package:flutter/material.dart';
import 'package:lipa_mobile_app/views/home/constants/app_colors.dart';
import 'package:lipa_mobile_app/views/home/constants/app_spacing.dart';
import 'package:lipa_mobile_app/views/home/constants/app_sizes.dart';
import 'package:lipa_mobile_app/views/home/constants/app_text_styles.dart';

class DiscoverSection extends StatelessWidget {
  const DiscoverSection({super.key});

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);

    return Padding(
      padding: EdgeInsets.all(AppSpacing.md),
      child: Container(
        padding: EdgeInsets.all(AppSpacing.md),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(AppSizes.scale(16)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _header(),
            SizedBox(height: AppSpacing.md),
            _discoverCard(
              image: 'assets/images/cintia_hotel.jpg',
              title: 'Cintia - Coritos Garden Hotel',
              description: 'Perfect for couples and families...',
            ),
            SizedBox(height: AppSpacing.sm),
            _discoverCard(
              image: 'assets/images/lipa_lomi.jpg',
              title: 'Lipa Lomi',
              description: 'Lomi stands apart from the rest...',
            ),
          ],
        ),
      ),
    );
  }

  Widget _header() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Discover Lipa',
          style: AppTextStyles.sectionTitle.copyWith(color: AppColors.white),
        ),
        const Icon(Icons.arrow_forward, color: AppColors.white),
      ],
    );
  }

  Widget _discoverCard({
    required String image,
    required String title,
    required String description,
  }) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.sm),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSizes.scale(12)),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(AppSizes.scale(8)),
            child: Image.asset(
              image,
              width: AppSizes.scale(90),
              height: AppSizes.scale(90),
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: AppSpacing.md),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.sectionTitle.copyWith(
                    fontSize: AppSizes.scale(14),
                  ),
                ),
                SizedBox(height: AppSpacing.xs),
                Text(
                  description,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.body,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
