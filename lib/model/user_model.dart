/**
 * 추후 사용할 사용자 정보 모델
 */

class UserModel {
  final String userName;
  final String userID;
  final String userPW;
  final String userEmail;
  final String userNumber;
  final String accessToken;
  final String gateToken; // == refreshToken

  UserModel(
      {required this.userName,
      required this.userID,
      required this.userPW,
      required this.userEmail,
      required this.userNumber,
      required this.accessToken,
      required this.gateToken});
}
