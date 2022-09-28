import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import '../model/token_model.dart';
import '../repository/token_repository.dart';

class TokenProvider extends ChangeNotifier {

  TokenRepository _tokenRepository = TokenRepository();
  List<TokenModel> _getTokens = [];
  List<TokenModel> get getTokens => _getTokens;

  loadToken() async{
    List<TokenModel>? tokenList = await _tokenRepository.getToken();
  }
}