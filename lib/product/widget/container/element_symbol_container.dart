// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class ElementSymbolContainer extends StatelessWidget {
  String title;
  Color color;
  Color shadowColor;
  ElementSymbolContainer({
    super.key,
    required this.title,
    required this.color,
    required this.shadowColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.20),
      width: context.dynamicWidth(0.30),
      decoration: BoxDecoration(
        border: Border.all(width: 0.5),
        boxShadow: [
          BoxShadow(
            color: shadowColor,
            offset: const Offset(4, 4),
            spreadRadius: 1,
          ),
        ],
        borderRadius: BorderRadius.circular(10.0),
        color: color,
      ),
      child: Center(
        child: Text(
          title,
          style: context.textTheme.displayMedium?.copyWith(
            color: AppColors().white,
          ),
        ),
      ),
    );
  }
}
