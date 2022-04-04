import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

abstract class SignInServices {
  UserModel getCurrentUser(String userId);
  Future<UserModel> signIn(String email, password);
}
