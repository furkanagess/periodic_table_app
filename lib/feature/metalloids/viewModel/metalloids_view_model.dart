import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'metalloids_view_model.g.dart';

class MetalloidsViewModel = _MetalloidsViewModelBase with _$MetalloidsViewModel;

abstract class _MetalloidsViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
