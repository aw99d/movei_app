import 'package:movei_app/features/auth/data/models/login_request.dart';
import 'package:movei_app/features/auth/data/models/login_response.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';
import 'package:movei_app/features/auth/data/models/register_response.dart';

abstract class AuthRemoteDataSources {

  Future<RegisterResponse> register(RegisterRequest registerRequest);

  Future<LoginResponse> login(LoginRequest loginRequest);
}