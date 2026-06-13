

class TransactionModel extends TransactionEntity {
  const TransactionModel({
    required super.id,
    required super.accountId,
    required super.amount,
    required super.type,
    required super.description,
    required super.balanceBefore,
    required super.balanceAfter,
    required super.createdAt,
  });