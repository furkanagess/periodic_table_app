import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/detail/view/detail_view.dart';
import 'package:periodic_table_app/feature/other/viewModel/other_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/constants/strings_constant.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';
import 'package:periodic_table_app/product/widget/container/element_container.dart';

class OtherElementsPageView extends StatelessWidget {
  const OtherElementsPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<OtherViewModel>(
      viewModel: OtherViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(
        backgroundColor: AppColors().background,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            sliverAppbar(context),
          ],
          body: ListView(
            padding: context.paddingNormal,
            children: [
              headerText(context),
              otherElementsListview(),
            ],
          ),
        ),
      ),
    );
  }

  SliverAppBar sliverAppbar(BuildContext context) {
    return SliverAppBar(
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

  ListView otherElementsListview() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) => ElementContainer(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const DetailPageView(),
            ),
          );
        },
        color: AppColors().blue,
        shadowColor: AppColors().darkBlue,
        atomNumber: "109",
        atomSymbol: "Mt",
        atomName: "Meitnerium",
        atomWeight: "278",
      ),
    );
  }

  Center headerText(BuildContext context) {
    return Center(
      child: Text(
        AppStrings().others,
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
                color: AppColors().lightWhite,
              ),
              prefixIcon: Icon(
                Icons.search,
                color: AppColors().lightWhite,
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
