import 'package:flutter/material.dart';

import 'package:periodic_table_app/feature/metals/viewModel/metal_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/constants/strings_constant.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';
import 'package:periodic_table_app/product/widget/element_group_container.dart';

class MetalPageView extends StatelessWidget {
  const MetalPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<MetalViewModel>(
      viewModel: MetalViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(
        backgroundColor: AppColors().background,
        appBar: buildAppbar(context),
        body: SafeArea(
          child: ListView(
            children: [
              SizedBox(height: context.dynamicHeight(0.01)),
              headerText(context),
              SizedBox(height: context.dynamicHeight(0.04)),
              metalGroupOne(),
              SizedBox(height: context.dynamicHeight(0.04)),
              metalGroupTwo(),
              SizedBox(height: context.dynamicHeight(0.04)),
              metalGroupThree(),
            ],
          ),
        ),
      ),
    );
  }

  Row metalGroupThree() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {},
          color: AppColors().brown,
          title: AppStrings().lanthanites,
        ),
        ElementGroupContainer(
          onTap: () {},
          color: AppColors().orange,
          title: AppStrings().actinides,
        ),
      ],
    );
  }

  Row metalGroupTwo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {},
          color: AppColors().grey,
          title: AppStrings().transition,
        ),
        ElementGroupContainer(
          onTap: () {},
          color: AppColors().green,
          title: AppStrings().postTransition,
        ),
      ],
    );
  }

  Row metalGroupOne() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {},
          color: AppColors().pink,
          title: AppStrings().alkali,
        ),
        ElementGroupContainer(
          onTap: () {},
          color: AppColors().lightOrange,
          title: AppStrings().alkaliEarth,
        ),
      ],
    );
  }

  Center headerText(BuildContext context) {
    return Center(
      child: Text(
        AppStrings().metalGroup,
        style: context.textTheme.headlineLarge?.copyWith(
          color: AppColors().white,
        ),
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0,
      backgroundColor: AppColors().background,
      title: Flexible(
        child: Padding(
          padding: context.paddingLow,
          child: TextField(
            decoration: InputDecoration(
              hintText: AppStrings().searchElement,
              hintStyle: context.textTheme.titleMedium?.copyWith(
                color: AppColors().white,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors().white,
              ),
              filled: true,
              fillColor: AppColors().transparentWhite,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
