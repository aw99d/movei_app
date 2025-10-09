import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:movei_app/core/error/app_expection.dart';
import 'package:movei_app/core/error/failuer.dart';
import 'package:movei_app/features/auth/data/data_soures/local/auth_token_data_sources.dart';
import 'package:movei_app/features/auth/data/data_soures/remote/auth_remote_data_sources.dart';
import 'package:movei_app/features/auth/data/domain/enities/register_user.dart';
import 'package:movei_app/features/auth/data/domain/repositories/auth_reopsitories.dart';
import 'package:movei_app/features/auth/data/models/login_request.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';
import 'package:movei_app/features/auth/mappers/user_mappers.dart';

@Singleton(as: AuthReopsitories)
class AuthReopsitoriesImpl implements AuthReopsitories {
const AuthReopsitoriesImpl(this._authRemoteDataSources , this._authTokenDataSources);

  final AuthRemoteDataSources _authRemoteDataSources;
   

  final AuthTokenDataSources _authTokenDataSources;

  @override
  Future<Either<Failuer, RegisterUser>> register(
    RegisterRequest registerRequest,
  ) async {
    try {
      final response = await _authRemoteDataSources.register(registerRequest);
      return right(response.registerModel.toEntity);
    } on AppExpection catch (expection) {
      return left(Failuer(expection.message));
    }
  }

  @override
  Future<Either<Failuer, String>> login(LoginRequest loginRequest) async {
    try {
      final response = await _authRemoteDataSources.login(loginRequest);
      await _authTokenDataSources.saveToken(response.data);
      return right(response.data);
    } on AppExpection catch (exception) {
      return left(Failuer(exception.message));
    }
  }
}
