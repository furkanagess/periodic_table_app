import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/metals/subMetals/alkalineEarth/viewModel/alkaline_earth_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';

class EarthAlkinePageView extends StatelessWidget {
  const EarthAlkinePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<EarthAlkalineViewModel>(
      viewModel: EarthAlkalineViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(),
    );
  }
}
