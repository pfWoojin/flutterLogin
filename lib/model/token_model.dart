class TokenModel {
  final String accessToken;
  final String gateToken; // == refreshToken

  TokenModel({required this.accessToken, required this.gateToken});

  factory TokenModel.fromJson(Map<String, dynamic> parsedJson) {
    return TokenModel(
      accessToken: parsedJson['accessToken'],
      gateToken: parsedJson['gateToken'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    data['gateToken'] = this.gateToken;

    return data;
  }
}
