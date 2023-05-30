import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/metals/subMetals/actinides/view/actinides_view.dart';
import 'package:periodic_table_app/feature/metals/subMetals/alkali/view/alkaline_view.dart';
import 'package:periodic_table_app/feature/metals/subMetals/alkalineEarth/view/earth_alkaline_view.dart';
import 'package:periodic_table_app/feature/metals/subMetals/lanthandes/view/lanthanides_view.dart';
import 'package:periodic_table_app/feature/metals/subMetals/postTransition/view/post_transtion_view.dart';
import 'package:periodic_table_app/feature/metals/subMetals/transition/view/transition_view.dart';

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
            padding: context.paddingNormal,
            children: [
              headerText(context),
              SizedBox(height: context.dynamicHeight(0.04)),
              metalGroupOne(context),
              SizedBox(height: context.dynamicHeight(0.04)),
              metalGroupTwo(context),
              SizedBox(height: context.dynamicHeight(0.04)),
              metalGroupThree(context),
            ],
          ),
        ),
      ),
    );
  }

  Row metalGroupThree(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const LanthanidesPageView(),
              ),
            );
          },
          shadowColor: AppColors().lightOrange,
          color: AppColors().brown,
          title: AppStrings().lanthanites,
        ),
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ActinidesPageView(),
              ),
            );
          },
          shadowColor: AppColors().lightOrange,
          color: AppColors().orange,
          title: AppStrings().actinides,
        ),
      ],
    );
  }

  Row metalGroupTwo(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TransitionPageView(),
              ),
            );
          },
          shadowColor: AppColors().lightOrange,
          color: AppColors().grey,
          title: AppStrings().transition,
        ),
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PostTransitionPageView(),
              ),
            );
          },
          shadowColor: AppColors().lightOrange,
          color: AppColors().green,
          title: AppStrings().postTransition,
        ),
      ],
    );
  }

  Row metalGroupOne(context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const AlkinePageView(),
              ),
            );
          },
          shadowColor: AppColors().lightOrange,
          color: AppColors().pink,
          title: AppStrings().alkali,
        ),
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const EarthAlkinePageView(),
              ),
            );
          },
          shadowColor: AppColors().lightOrange,
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
