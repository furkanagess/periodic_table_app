import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/metals/alkali/viewModel/alkaline_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';

class AlkinePageView extends StatelessWidget {
  const AlkinePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<AlkalineViewModel>(
      viewModel: AlkalineViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(),
    );
  }
}
