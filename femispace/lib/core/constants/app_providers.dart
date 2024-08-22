import 'package:femispace/feature/nutritions/view_model.dart/nutritions_view_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


class AppProviders{
  static final nutritionsViewModelProvider = ChangeNotifierProvider<NutritionsViewModel>((ref) {
  return NutritionsViewModel();
});
}