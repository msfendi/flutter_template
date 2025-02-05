class OrderModel {
  String onBehalfOf;
  String fullName;
  String gender;
  bool isDeceased;
  int price;

  OrderModel({
    required this.onBehalfOf,
    required this.fullName,
    required this.gender,
    required this.isDeceased,
    required this.price,
  });
}