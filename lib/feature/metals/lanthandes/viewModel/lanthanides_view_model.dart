import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'lanthanides_view_model.g.dart';

class LanthanidesViewModel = _LanthanidesViewModelBase with _$LanthanidesViewModel;

abstract class _LanthanidesViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
