enum VerificationType {
  phoneNumber,
  email,
}

class VerificationPageParam {
  final VerificationType type;
  final String verificationId;

  VerificationPageParam({required this.type, required this.verificationId});
}
