class TransactionRecord {
  final String id;
  final String type;
  final double amount;
  final String status;
  final String reference;
  final DateTime createdAt;

  TransactionRecord({
    required this.id,
    required this.type,
    required this.amount,
    required this.status,
    required this.reference,
    required this.createdAt,
  });
}
