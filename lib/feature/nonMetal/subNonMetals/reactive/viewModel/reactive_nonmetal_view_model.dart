import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'reactive_nonmetal_view_model.g.dart';

class ReactiveNonmetalViewModel = _ReactiveNonmetalViewModelBase with _$ReactiveNonmetalViewModel;

abstract class _ReactiveNonmetalViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
