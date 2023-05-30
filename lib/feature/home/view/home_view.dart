import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/home/viewModel/home_view_model.dart';
import 'package:periodic_table_app/feature/metalloids/view/metalloids_view.dart';
import 'package:periodic_table_app/feature/metals/view/metal_view.dart';
import 'package:periodic_table_app/feature/nonMetal/view/non_metal_view.dart';
import 'package:periodic_table_app/feature/other/view/other_view.dart';

import 'package:periodic_table_app/product/base/base_view.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/constants/strings_constant.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';
import 'package:periodic_table_app/product/widget/element_container.dart';
import 'package:periodic_table_app/product/widget/element_group_container.dart';
import 'package:periodic_table_app/product/widget/language_button.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<HomeViewModel>(
      viewModel: HomeViewModel(),
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
              headerElementText(context),
              clickableElementContainer(context),
              SizedBox(height: context.dynamicHeight(0.02)),
              headerGroupText(context),
              SizedBox(height: context.dynamicHeight(0.02)),
              elementGroupRowOne(context),
              SizedBox(height: context.dynamicHeight(0.04)),
              elementGroupRowTwo(context),
              divider(context),
              langAndHelpRow(context),
            ],
          ),
        ),
      ),
    );
  }

  Row elementGroupRowTwo(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NonMetalPageView(),
              ),
            );
          },
          shadowColor: AppColors().turquoise,
          color: AppColors().turquoise,
          title: AppStrings().nonMetal,
        ),
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OtherElementsPageView(),
              ),
            );
          },
          shadowColor: AppColors().darkBlue,
          color: AppColors().darkBlue,
          title: AppStrings().others,
        ),
      ],
    );
  }

  Row elementGroupRowOne(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MetalloidsPageView(),
              ),
            );
          },
          shadowColor: AppColors().lightPurple,
          color: AppColors().purple,
          title: AppStrings().metalloids,
        ),
        ElementGroupContainer(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const MetalPageView(),
              ),
            );
          },
          shadowColor: AppColors().green,
          color: AppColors().green,
          title: AppStrings().metal,
        ),
      ],
    );
  }

  Divider divider(BuildContext context) {
    return Divider(
      thickness: 2.0,
      indent: 10.0,
      endIndent: 10.0,
      height: context.dynamicHeight(0.075),
      color: AppColors().white,
    );
  }

  Row langAndHelpRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        languageButtonTR(context),
        // languageButtonUK(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.help,
            color: AppColors().white,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.report,
            color: AppColors().white,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.star_border,
            color: AppColors().white,
            size: 30,
          ),
        ),
      ],
    );
  }

  LanguageButton languageButtonUK() {
    return LanguageButton(
      asset: "assets/img/uk_flag.png",
      onTap: () {},
    );
  }

  Widget languageButtonTR(BuildContext context) {
    return LanguageButton(
      asset: "assets/img/turkish_flag.png",
      onTap: () {},
    );
  }

  Text headerGroupText(BuildContext context) {
    return Text(
      AppStrings().groupOfElement,
      style: context.textTheme.labelLarge?.copyWith(
        color: AppColors().white,
      ),
    );
  }

  Widget clickableElementContainer(BuildContext context) {
    return ElementContainer(
      onTap: () {},
      color: AppColors().pink,
      shadowColor: AppColors().pink,
      atomNumber: "2",
      atomSymbol: "He",
      atomName: "Helyum",
      atomWeight: "2.322",
    );
  }

  Text headerElementText(BuildContext context) {
    return Text(
      AppStrings().elementOfDay,
      style: context.textTheme.labelLarge?.copyWith(
        color: AppColors().white,
      ),
    );
  }

  AppBar buildAppbar(BuildContext context) {
    return AppBar(
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
