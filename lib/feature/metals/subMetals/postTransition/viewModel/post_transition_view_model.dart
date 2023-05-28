import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'post_transition_view_model.g.dart';

class PostTransitionViewModel = _PostTransitionViewModelBase with _$PostTransitionViewModel;

abstract class _PostTransitionViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
