// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class GradientButton extends StatelessWidget {
  String title;
  Function() onTap;

  GradientButton({
    super.key,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: context.dynamicWidth(0.7),
        height: context.dynamicHeight(0.06),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            colors: [
              AppColors().purple,
              AppColors().pink,
              AppColors().orange,
              AppColors().yellow,
            ],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: context.textTheme.bodyLarge?.copyWith(color: AppColors().white),
          ),
        ),
      ),
    );
  }
}
