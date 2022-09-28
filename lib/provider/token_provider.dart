import 'package:flutter/cupertino.dart';

import 'package:provider/provider.dart';
import '../model/token_model.dart';
import '../repository/token_repository.dart';

class TokenProvider extends ChangeNotifier {

  TokenRepository _tokenRepository = TokenRepository();
  String _getTokens = '';
  String get getTokens => _getTokens;

  loadToken() async{
    String gateToken = await _tokenRepository.getGateToken('123');
    _getTokens = gateToken;
    notifyListeners();
  }
}