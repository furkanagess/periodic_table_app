import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/metals/subMetals/lanthandes/viewModel/lanthanides_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';

class LanthanidesPageView extends StatelessWidget {
  const LanthanidesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<LanthanidesViewModel>(
      viewModel: LanthanidesViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(),
    );
  }
}
