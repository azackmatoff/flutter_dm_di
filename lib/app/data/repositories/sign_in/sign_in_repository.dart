import 'package:flutter_dm_di/app/data/services/server/sign_in/firebase/firebase_auth_services.dart';
import 'package:flutter_dm_di/app/data/services/server/sign_in/sign_in_services.dart';
import 'package:flutter_dm_di/app/presentation/models/user_model.dart';
import 'package:flutter_dm_di/app/utils/di/di_locator.dart';

class SignInRepository {
  /// SignInServices is an abstract class used for authentication
  final SignInServices _signInServices;

  /// FirebaseAuthServices jon gana misal katari turat
  /// koldonboybuz
  final FirebaseAuthServices _firebaseAuthServices;
  // SignInRepository(this._signInServices);
  // SignInRepository(SignInServices signInServices) : _signInServices = signInServices;
  SignInRepository()
      : _signInServices = getIt<FirebaseAuthServices>(),
        _firebaseAuthServices = getIt<FirebaseAuthServices>();

  UserModel getCurrentUser(String userId) {
    return _signInServices.getCurrentUser(userId);
  }

  Future<UserModel> signIn(String email, password) async {
    return await _signInServices.signIn(email, password);
  }
}
