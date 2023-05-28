import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/metals/transition/viewModel/transition_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';

class TransitionPageView extends StatelessWidget {
  const TransitionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<TransitionViewModel>(
      viewModel: TransitionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(),
    );
  }
}
