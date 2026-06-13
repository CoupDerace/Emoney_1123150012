

class GetAccountUsecase{
  final AccountRepository _repository;
  GetAccountUsecase(this._repository);
  Future<AccountEntity> call() => _repository.getAccount();
}