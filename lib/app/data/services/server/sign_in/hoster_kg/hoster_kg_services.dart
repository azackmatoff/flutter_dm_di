import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

import '../sign_in_services.dart';

class HosterKgServices extends SignInServices {
  @override
  UserModel getCurrentUser(String userId) {
    return UserModel(
      id: userId,
      name: 'HOSTER KG',
      email: 'hoster@hoster.com',
    );
  }

  @override
  Future<UserModel> signIn(String email, password) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return UserModel(
        id: '00454',
        name: 'HOSTER KG',
        email: email,
      );
    });
  }
}
