// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';

class LanguageButton extends StatelessWidget {
  Function() onTap;
  String asset;
  LanguageButton({
    super.key,
    required this.asset,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: context.dynamicHeight(0.05),
        width: context.dynamicWidth(0.15),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              asset,
            ),
          ),
        ),
      ),
    );
  }
}
