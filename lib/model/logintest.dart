/**
 * 로그인 테스트에 사용할 모델
 */

class UserLoginTest {
  final String userID;
  final String userPW;
  final String userEmail;
  final String accessToken;
  final String gateToken; // == refreshToken

  UserLoginTest(
      {
        required this.userID,
        required this.userPW,
        required this.userEmail,
        required this.accessToken,
        required this.gateToken});
}
