import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'non_metal_view_model.g.dart';

class NonMetalViewModel = _NonMetalViewModelBase with _$NonMetalViewModel;

abstract class _NonMetalViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
