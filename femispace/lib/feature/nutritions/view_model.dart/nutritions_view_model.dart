import 'package:flutter/material.dart';

class NutritionsViewModel extends ChangeNotifier {

  int selectedRowButtonId=3;
  bool summaryButtonActive=true;

   void changeSelectedRowButtonId(int id) {
    selectedRowButtonId = id;
    notifyListeners();
  }

  void changeSummaryButtonActive({required bool newValue}) {
    summaryButtonActive = newValue;
    notifyListeners();
  }

}


