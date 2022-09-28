import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart';

class TokenRepository {
  Future<String> getGateToken(String accessToken) async {
    final client = Client();

    var uri = Uri.parse(
        'https://virtserver.swaggerhub.com/HYEONBIN/QR_System/1.0.0/getGateToken');
    final response = await client.post(uri,
        headers: {HttpHeaders.authorizationHeader: "Bearer ${''}"});
    if (checkResponse(response)) {
      final body = jsonDecode(response.body);
      return body['gateToken'];
    } else {
      throw Exception("error getting gate Token");
    }
  }

  bool checkResponse(final Response response) {
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }
}
