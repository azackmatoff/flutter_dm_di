import 'package:flutter_dm_di/app/data/repositories/sign_in/sign_in_repository.dart';
import 'package:flutter_dm_di/app/data/services/server/sign_in/aws/aws_auth_services.dart';
import 'package:flutter_dm_di/app/data/services/server/sign_in/firebase/firebase_auth_services.dart';
import 'package:flutter_dm_di/app/data/services/server/sign_in/hoster_kg/hoster_kg_services.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void initDI() {
  _initServices();
  _initRepositories();
}

_initServices() {
  getIt.registerSingleton<HosterKgServices>(HosterKgServices());
  getIt.registerSingleton<FirebaseAuthServices>(FirebaseAuthServices());
  getIt.registerSingleton<AwsAuthServices>(AwsAuthServices());
}

_initRepositories() {
  getIt.registerSingleton<SignInRepository>(SignInRepository());
}
