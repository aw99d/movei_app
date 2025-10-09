
import 'package:injectable/injectable.dart';
import 'package:movei_app/core/error/app_expection.dart';
import 'package:movei_app/core/widgets/api_constaonst.dart';
import 'package:movei_app/features/auth/data/data_soures/remote/auth_remote_data_sources.dart';
import 'package:movei_app/features/auth/data/models/login_request.dart';
import 'package:movei_app/features/auth/data/models/login_response.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';
import 'package:movei_app/features/auth/data/models/register_response.dart';
import 'package:dio/dio.dart';

@Singleton(as: AuthRemoteDataSources)
class AuthRemoteApiDataSources implements AuthRemoteDataSources {
  final Dio _dio;
  const AuthRemoteApiDataSources(this._dio);

  @override
  Future<LoginResponse> login(LoginRequest loginRequest) async {
    try {
      final response = await _dio.post(
        ApiConstaonst.loginEndPoint,
        data: loginRequest.toJson(),
      );
      return LoginResponse.fromJson(response.data);
    } catch (exception) {
      final message = (exception is DioException)
          ? ((exception.response?.data as dynamic)?['message']?.toString() ??
                'Failed to Login')
          : 'Failed to Login';
      throw RemateExpextion(message);
    }
  }

  @override
  Future<RegisterResponse> register(RegisterRequest registerRequest) async {
    try {
      final response = await _dio.post(
        ApiConstaonst.registerEndPoint,
        data: registerRequest.toJson(),
      );
      return RegisterResponse.fromJson(response.data);
    } catch (exception) {
      final message = (exception is DioException)
          ? ((exception.response?.data as dynamic)?['message']?.toString() ??
                'Failed to Register')
          : 'Failed to Register';
      throw RemateExpextion(message);
    }
  }
}
