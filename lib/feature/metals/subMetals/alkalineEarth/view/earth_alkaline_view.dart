import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/detail/view/detail_view.dart';
import 'package:periodic_table_app/feature/metals/subMetals/alkalineEarth/viewModel/alkaline_earth_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/constants/strings_constant.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';
import 'package:periodic_table_app/product/widget/container/element_container.dart';

class EarthAlkinePageView extends StatelessWidget {
  const EarthAlkinePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<EarthAlkalineViewModel>(
      viewModel: EarthAlkalineViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(
        backgroundColor: AppColors().background,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            sliverAppbar(context),
          ],
          body: SafeArea(
            child: ListView(
              padding: context.paddingNormal,
              children: [
                headerText(context),
                elementsListview(),
              ],
            ),
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

  ListView elementsListview() {
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
        color: AppColors().lightOrange,
        shadowColor: AppColors().dLightOrange,
        atomNumber: "5",
        atomSymbol: "B",
        atomName: "Boron",
        atomWeight: "10.81",
      ),
    );
  }

  Center headerText(BuildContext context) {
    return Center(
      child: Text(
        AppStrings().alkaliEarth,
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
