// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class ElementGroupContainer extends StatelessWidget {
  Function() onTap;
  Color color;
  Color shadowColor;
  String title;

  ElementGroupContainer({
    super.key,
    required this.onTap,
    required this.color,
    required this.shadowColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.dynamicHeight(0.22),
        width: context.dynamicWidth(0.38),
        decoration: BoxDecoration(
          border: Border.all(
            width: 1.5,
            style: BorderStyle.solid,
            color: AppColors().background,
          ),
          boxShadow: [
            BoxShadow(
              color: shadowColor,
              offset: const Offset(0, 10),
              blurRadius: 5,
              spreadRadius: -5,
            ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: Center(
          child: Text(
            title,
            style: context.textTheme.bodyMedium?.copyWith(
              color: AppColors().white,
            ),
          ),
        ),
      ),
    );
  }
}
