class SignupData {
  final String? username;
  final String? password;
  final String? email;
  final String? phoneNumber;
  final String? name;

  SignupData.fromSignupForm(
      {required this.username,
      required this.password,
      required this.email,
      required this.phoneNumber,
      required this.name});

}
