// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class ElementContainer extends StatelessWidget {
  Function() onTap;
  Color color;
  Color shadowColor;
  String atomNumber;
  String atomSymbol;
  String atomName;
  String atomWeight;
  ElementContainer({
    super.key,
    required this.onTap,
    required this.color,
    required this.shadowColor,
    required this.atomNumber,
    required this.atomSymbol,
    required this.atomName,
    required this.atomWeight,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: context.paddingNormal,
        child: Container(
          width: context.dynamicWidth(0.7),
          height: context.dynamicHeight(0.075),
          decoration: BoxDecoration(
            border: Border.all(
              width: 1.0,
            ),
            boxShadow: [
              BoxShadow(
                blurRadius: 1.0,
                color: shadowColor,
                offset: const Offset(4, 8),
              ),
            ],
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: context.dynamicHeight(0.04), left: context.dynamicHeight(0.01)),
                child: Text(
                  atomNumber,
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColors().white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Text(
                atomSymbol,
                style: context.textTheme.headlineLarge?.copyWith(
                  color: AppColors().white,
                ),
              ),
              const Spacer(),
              Text(
                atomName,
                style: context.textTheme.headlineSmall?.copyWith(
                  color: AppColors().white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              Padding(
                padding: EdgeInsets.only(top: context.dynamicHeight(0.04), right: context.dynamicHeight(0.01)),
                child: Text(
                  atomWeight,
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: AppColors().white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
