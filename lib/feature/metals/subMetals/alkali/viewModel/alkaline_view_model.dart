import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'alkaline_view_model.g.dart';

class AlkalineViewModel = _AlkalineViewModelBase with _$AlkalineViewModel;

abstract class _AlkalineViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
