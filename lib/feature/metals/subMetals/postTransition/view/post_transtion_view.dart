import 'package:flutter/material.dart';

import 'package:periodic_table_app/feature/metals/subMetals/postTransition/viewModel/post_transition_view_model.dart';
import 'package:periodic_table_app/product/base/base_view.dart';

class PostTransitionPageView extends StatelessWidget {
  const PostTransitionPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseView<PostTransitionViewModel>(
      viewModel: PostTransitionViewModel(),
      onModelReady: (model) {
        model.setContext(context);
      },
      onPageBuilder: (context, value) => Scaffold(),
    );
  }
}
