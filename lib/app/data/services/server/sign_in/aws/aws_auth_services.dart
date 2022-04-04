import 'package:flutter_dm_di/app/presentation/models/user_model.dart';

import '../sign_in_services.dart';

class AwsAuthServices extends SignInServices {
  @override
  UserModel getCurrentUser(String userId) {
    return UserModel(
      id: userId,
      name: 'AWS',
      email: 'aws@aws.com',
    );
  }

  @override
  Future<UserModel> signIn(String email, password) async {
    return await Future.delayed(const Duration(seconds: 1), () {
      return UserModel(
        id: '002',
        name: 'AWS',
        email: email,
      );
    });
  }
}
