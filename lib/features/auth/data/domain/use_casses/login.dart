import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movei_app/core/error/failuer.dart';
import 'package:movei_app/features/auth/data/domain/repositories/auth_reopsitories.dart';
import 'package:movei_app/features/auth/data/models/login_request.dart';
@singleton
class Login {
  final AuthReopsitories _authReopsitories;
  Login(this._authReopsitories);

  Future<Either<Failuer, String>> call(LoginRequest loginRequest) =>
      _authReopsitories.login(loginRequest);
}
