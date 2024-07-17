import 'package:flutter/material.dart';
import 'package:web_task/ui/utils/app_colors.dart';

class NavigationBarButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  const NavigationBarButton({super.key, required this.title, required this.isSelected});

  @override
  Widget build(BuildContext context) {

    return TextButton(
        onPressed: (){},
        child: Text(
          title,
          style: TextStyle(
            color: isSelected ? AppColors.white : AppColors.white.withOpacity(0.7)
          ),
        )
    );
  }
}
