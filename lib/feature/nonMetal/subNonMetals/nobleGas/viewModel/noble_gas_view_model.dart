import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'noble_gas_view_model.g.dart';

class NobleGasViewModel = _NobleGasViewModelBase with _$NobleGasViewModel;

abstract class _NobleGasViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
