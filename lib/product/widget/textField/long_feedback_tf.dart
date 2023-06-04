// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class FeedbackLongTextField extends StatelessWidget {
  TextEditingController? controller;
  String title;
  FeedbackLongTextField({
    super.key,
    this.controller,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: controller,
        keyboardType: TextInputType.multiline,
        maxLines: 6,
        maxLength: 300,
        decoration: InputDecoration(
          hintStyle: context.textTheme.bodyMedium?.copyWith(color: AppColors().white),
          hintText: title,
          hoverColor: AppColors().white,
          focusColor: AppColors().white,
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors().white),
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors().white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 2, color: AppColors().white),
          ),
          border: OutlineInputBorder(borderSide: BorderSide(width: 2, color: AppColors().white)),
        ),
      ),
    );
  }
}
