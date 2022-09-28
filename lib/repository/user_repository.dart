import 'package:qrsystem/model/user_model.dart';
import '';

abstract class UserRepository{
  Future<List<UserModel>> getAllMember();
}