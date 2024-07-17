import 'package:flutter/material.dart';
import 'package:web_task/ui/utils/app_colors.dart';

class FooterIcon extends StatelessWidget {
  final String iconImagePath;
  const FooterIcon({super.key, required this.iconImagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12.0),
      margin: const EdgeInsets.only(right: 8.0),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: AppColors.primaryColor
      ),

      child: ImageIcon(
        AssetImage(
          iconImagePath,
        ),
        color: AppColors.white,
        size: 16,
      ),
    );
  }
}
