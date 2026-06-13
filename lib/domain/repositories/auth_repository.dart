abstract class AuthRepository {
  Future<({UserEntity user, String token})> verifyFirebaseToken(String firebaseToken);
  Future<({UserEntity user, String token})> registerWithOtp(String firebaseToken);
  Future<void> verifyEmailOtp(String code);


}
