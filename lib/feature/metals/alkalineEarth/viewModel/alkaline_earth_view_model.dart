import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:periodic_table_app/product/base/base_view_model.dart';
part 'alkaline_earth_view_model.g.dart';

class EarthAlkalineViewModel = _EarthAlkalineViewModelBase with _$EarthAlkalineViewModel;

abstract class _EarthAlkalineViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => viewModelContext = context;

  @override
  void init() {}
}
