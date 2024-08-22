
class SummaryListModel {
  String name;
  int percentileValue;
  int? kcalValue;
  bool positiveValue;
  SummaryListModel({
    required this.name,
    required this.percentileValue,
    this.kcalValue,
    required this.positiveValue,
  });
}
