import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class TextIconRow extends StatelessWidget {
  String title;
  Color color;
  IconData icon;
  TextIconRow({
    super.key,
    required this.title,
    required this.color,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 30,
          color: color,
        ),
        Text(
          title,
          style: context.textTheme.bodyLarge?.copyWith(
            color: AppColors().white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
