import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'actinides_view_model.g.dart';

class ActinidesViewModel = _ActinidesViewModelBase with _$ActinidesViewModel;

abstract class _ActinidesViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
