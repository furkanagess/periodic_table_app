// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class ElementInfoParagraph extends StatelessWidget {
  String title;
  String paragraph;
  ElementInfoParagraph({
    super.key,
    required this.title,
    required this.paragraph,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium?.copyWith(
            color: AppColors().white,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8, left: 16, right: 16),
          child: Text(
            paragraph,
            style: context.textTheme.bodySmall?.copyWith(
              color: AppColors().white,
            ),
          ),
        ),
      ],
    );
  }
}
