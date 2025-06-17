enum VerificationMethod { email, phoneNumber }

enum VerificationType { signIn, signUp }

class VerificationPageParam {
  final VerificationMethod method;
  final String verificationId;
  final VerificationType type;

  VerificationPageParam({required this.method, required this.verificationId, required this.type});
}
