class OtpRepositoryImpl implements OtpRepository {
  final OtpRemoteDatasource _remote;
  final AuthRepository _authRepo;
  OtpRepositoryImpl(this._remote, this._authRepo);

  
}
