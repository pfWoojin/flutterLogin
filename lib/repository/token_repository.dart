import 'dart:convert';

import 'package:qrsystem/common/constants.dart';
import 'package:http/http.dart' as http;
import 'package:qrsystem/model/token_model.dart';

class TokenRepository {
  var token = Constants.TOKEN_KEY;

  Future<List<TokenModel>?> getToken() async {
    // TODO 추후엔 api 호출로 바꿀 것
    final response = await http.get(Uri.parse(
        'https://virtserver.swaggerhub.com/HYEONBIN/QR_System/1.0.0/getGateToken'));
    String accessToken = 'ACCESSTOKEN';

    if (response.statusCode == 200) {
      print('RESPONSE 성공!!');
      print(response.body);

      return (jsonDecode(response.body) as List)
          .map((e) => TokenModel.fromJson(e))
          .toList();
    } else {
      print('RESPONE FAIL');
    }
  }
}
