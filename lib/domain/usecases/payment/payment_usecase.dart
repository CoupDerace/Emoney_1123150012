

class TopupUsecase {
  final PaymentRepository _repository;
  TopupUsecase(this._repository);
  Future<({double balance, double amount})> call(double amount) =>
      _repository.topup(amount);
}