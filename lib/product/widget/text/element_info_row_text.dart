// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class ElementInfoRow extends StatelessWidget {
  String title;
  String value;

  ElementInfoRow({
    super.key,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 6, bottom: 6),
      child: Row(
        children: [
          Text(
            title,
            style: context.textTheme.titleMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: AppColors().white,
            ),
          ),
          Text(
            value,
            style: context.textTheme.titleMedium?.copyWith(
              color: AppColors().white,
            ),
          ),
        ],
      ),
    );
  }
}
