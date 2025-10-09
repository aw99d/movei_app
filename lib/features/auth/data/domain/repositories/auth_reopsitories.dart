import 'package:dartz/dartz.dart';
import 'package:movei_app/core/error/failuer.dart';
import 'package:movei_app/features/auth/data/data_soures/local/auth_token_data_sources.dart';
import 'package:movei_app/features/auth/data/data_soures/remote/auth_remote_data_sources.dart';
import 'package:movei_app/features/auth/data/domain/enities/register_user.dart';
import 'package:movei_app/features/auth/data/models/login_request.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';

abstract class AuthReopsitories {
  AuthReopsitories(AuthRemoteDataSources authRemoteDataSources, AuthTokenDataSources authTokenDataSources);

  Future<Either<Failuer, RegisterUser>> register(RegisterRequest registerRequest);

  Future<Either<Failuer, String>> login(LoginRequest LoginRequest);
}
