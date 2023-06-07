class PaymentService {
  final String type;
  final String iconPath;
  final String name;
  final String day;
  final String month;
  final String bill;

  PaymentService({
    required this.type,
    required this.iconPath,
    required this.name,
    required this.day,
    required this.month,
    required this.bill,
  });
}
