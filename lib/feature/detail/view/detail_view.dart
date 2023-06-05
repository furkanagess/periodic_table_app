import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/detail/viewModel/detail_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';
import 'package:periodic_table_app/product/constants/color_constants.dart';
import 'package:periodic_table_app/product/constants/strings_constant.dart';
import 'package:periodic_table_app/product/extensions/context_extension.dart';
import 'package:periodic_table_app/product/widget/container/element_symbol_container.dart';
import 'package:periodic_table_app/product/widget/text/element_detail_row.dart';
import 'package:periodic_table_app/product/widget/text/element_info_long_text.dart';
import 'package:periodic_table_app/product/widget/text/element_info_row_text.dart';

class DetailPageView extends StatelessWidget {
  const DetailPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<DetailViewModel>(
      viewModel: DetailViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(
        backgroundColor: AppColors().background,
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            buildSliverAppbar(context),
          ],
          body: SingleChildScrollView(
            child: Padding(
              padding: context.paddingNormal,
              child: Column(
                children: [
                  SizedBox(height: context.dynamicHeight(0.03)),
                  Row(
                    children: [
                      ElementSymbolContainer(
                        title: "He",
                        color: AppColors().purple,
                        shadowColor: AppColors().darkPurple,
                      ),
                      SizedBox(width: context.dynamicWidth(0.05)),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ElementInfoRow(title: "Number:  ", value: "2"),
                          ElementInfoRow(title: "Name:  ", value: "Helium"),
                          ElementInfoRow(title: "Weight:  ", value: "1.008"),
                          ElementInfoRow(title: "Category:  ", value: "Reactive Nonmetal"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: context.dynamicHeight(0.07)),
                  Container(
                    height: 470,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors().darkBlue,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElementDetailRowText(title: "Blok", value: "S"),
                              ElementDetailRowText(title: "Periyot", value: "1"),
                              ElementDetailRowText(title: "Grup", value: "1A"),
                            ],
                          ),
                          SizedBox(height: context.dynamicHeight(0.05)),
                          ElementInfoParagraph(
                            title: "Tanım",
                            paragraph: "adadadssdas",
                          ),
                          SizedBox(height: context.dynamicHeight(0.05)),
                          ElementInfoParagraph(
                            title: "Kullanım Alanları",
                            paragraph: "adadadssdas",
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  SliverAppBar buildSliverAppbar(BuildContext context) {
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
