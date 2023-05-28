import 'package:flutter/material.dart';
import 'package:periodic_table_app/feature/metals/actinides/viewModel/actinides_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';

class ActinidesPageView extends StatelessWidget {
  const ActinidesPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<ActinidesViewModel>(
      viewModel: ActinidesViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(),
    );
  }
}
