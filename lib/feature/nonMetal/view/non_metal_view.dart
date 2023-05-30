import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/nonMetal/viewModel/non_metal_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/constants/strings_constant.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';
import 'package:periodic_table_app/product/widget/element_group_container.dart';

class NonMetalPageView extends StatelessWidget {
  const NonMetalPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<NonMetalViewModel>(
      viewModel: NonMetalViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(
        backgroundColor: AppColors().background,
        appBar: buildAppbar(context),
        body: SafeArea(
          child: ListView(
            padding: context.paddingNormal,
            children: [
              headerText(context),
              SizedBox(height: context.dynamicHeight(0.04)),
              nonMetalGroup(),
            ],
          ),
        ),
      ),
    );
  }

  Row nonMetalGroup() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          shadowColor: AppColors().lightOrange,
          onTap: () {},
          color: AppColors().red,
          title: AppStrings().nobleGas,
        ),
        ElementGroupContainer(
          shadowColor: AppColors().lightOrange,
          onTap: () {},
          color: AppColors().purple,
          title: AppStrings().reactive,
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
