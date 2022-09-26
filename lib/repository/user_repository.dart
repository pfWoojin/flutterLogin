import 'package:qrsystem/model/logintest.dart';

abstract class UserRepository{
  Future<List<UserLoginTest>> getAllMember();
}