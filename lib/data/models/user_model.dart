

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.firebaseUid,
    required super.email,
    required super.name,
    required super.role,
    required super.emailVerified,
    required super.totpEnabled,
    super.twoFaMethod,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
  return UserModel(
      id: (json['id'] as num).toInt(),
      firebaseUid: json['firebase_uid'] as String? ?? '',
      email: json['email'] as String? ?? '',
      name: json['name'] as String? ?? '',
      role: json['role'] as String? ?? 'user',
      emailVerified: json['email_verified'] as bool? ?? false,
      totpEnabled: json['totp_enabled'] as bool? ?? false,
      twoFaMethod: json['two_fa_method'] as String?,
    );
  }
  