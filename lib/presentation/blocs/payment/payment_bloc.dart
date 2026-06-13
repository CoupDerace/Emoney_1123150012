

// Events
abstract class PaymentEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class PaymentTopupRequested extends PaymentEvent {
  final double amount;
  PaymentTopupRequested(this.amount);
  @override
  List<Object?> get props => [amount];
}

class PaymentTransferRequested extends PaymentEvent {
  final double amount;
  final String description;
  final String otpCode;
  final String otpType;
  PaymentTransferRequested({
    required this.amount,
    required this.description,
    required this.otpCode,
    required this.otpType,
  });
  @override
  List<Object?> get props => [amount, description, otpCode, otpType];
}

class PaymentReset extends PaymentEvent {}
