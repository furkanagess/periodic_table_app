import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'transition_view_model.g.dart';

class TransitionViewModel = _TransitionViewModelBase with _$TransitionViewModel;

abstract class _TransitionViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
