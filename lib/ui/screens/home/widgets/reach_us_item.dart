import 'package:flutter/material.dart';
import 'package:web_task/ui/utils/app_colors.dart';

class ReachUsItem extends StatelessWidget {
  final String title;
  final IconData icon;
  const ReachUsItem({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,

      children: [
        Icon(
          icon,
          color: AppColors.primaryColor,
        ),
        SizedBox(width: MediaQuery.sizeOf(context).width * 0.01,),
        Text(
          title,
          style: TextStyle(
            color: AppColors.white.withOpacity(0.7),
            fontSize: 16,
            fontWeight: FontWeight.normal
          ),
        ),
      ],
    );
  }
}
