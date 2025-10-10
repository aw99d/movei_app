import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:movei_app/features/auth/data/domain/use_casses/login.dart';
import 'package:movei_app/features/auth/data/domain/use_casses/register.dart';
import 'package:movei_app/features/auth/data/models/login_request.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';
import 'package:movei_app/features/auth/presentation/cubit/auth_state.dart';


@singleton
class AuthCubit extends Cubit<AuthState> {
  AuthCubit(this._login , this._register) : super(AuthInitial());
final Register _register;
final Login _login;

  Future<void> register(RegisterRequest registerRequest) async {
    emit(RegisterLoding());

    final result = await _register(registerRequest);

    result.fold(
      (Failuer) => emit(RegisterError(Failuer.message)),
      (_) => emit(RegisterSuccess()),
    );
  }

  Future<void> login(LoginRequest loginRequest) async {
    emit(LoginLoding());
    final result = await _login(loginRequest);
    result.fold(
      (Failuer) => emit(LoginError(Failuer.message)),
      (_) => emit(LoginSuccess()),
    );
  }
}
