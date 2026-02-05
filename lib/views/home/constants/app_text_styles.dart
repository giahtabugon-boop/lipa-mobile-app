import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_sizes.dart';

class AppTextStyles {
  static TextStyle heading = TextStyle(
    fontSize: AppSizes.scale(24),
    fontWeight: FontWeight.w700,
    color: AppColors.white,
  );

  static TextStyle sectionTitle = TextStyle(
    fontSize: AppSizes.scale(16),
    fontWeight: FontWeight.w600,
    color: AppColors.textPrimary,
  );

  static TextStyle body = TextStyle(
    fontSize: AppSizes.scale(12),
    fontWeight: FontWeight.w400,
    color: AppColors.textSecondary,
  );
}
