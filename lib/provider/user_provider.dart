import 'package:flutter/material.dart';
import 'package:qrsystem/repository/user_repository.dart';

import '../model/user_model.dart';

class UserProvider extends ChangeNotifier{
  late final UserRepository _userRepository;

  List<UserModel> userList = [];
}