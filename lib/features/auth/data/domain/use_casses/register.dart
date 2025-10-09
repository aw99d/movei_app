import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movei_app/core/error/failuer.dart';
import 'package:movei_app/features/auth/data/domain/enities/register_user.dart';
import 'package:movei_app/features/auth/data/domain/repositories/auth_reopsitories.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';
@singleton
class Register {
  final AuthReopsitories _authReopsitories;
  Register(this._authReopsitories);

 Future<Either<Failuer, RegisterUser>>  call(RegisterRequest registerRequest) =>
      _authReopsitories.register(registerRequest);
}
