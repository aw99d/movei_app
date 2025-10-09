// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:movei_app/core/di/regester_module.dart' as _i976;
import 'package:movei_app/features/auth/data/data_soures/local/auth_pref_token_data_soursec.dart'
    as _i840;
import 'package:movei_app/features/auth/data/data_soures/local/auth_token_data_sources.dart'
    as _i341;
import 'package:movei_app/features/auth/data/data_soures/remote/auth_remote_api_data_sources.dart'
    as _i306;
import 'package:movei_app/features/auth/data/data_soures/remote/auth_remote_data_sources.dart'
    as _i940;
import 'package:movei_app/features/auth/data/domain/repositories/auth_reopsitories.dart'
    as _i362;
import 'package:movei_app/features/auth/data/domain/use_casses/login.dart'
    as _i804;
import 'package:movei_app/features/auth/data/domain/use_casses/register.dart'
    as _i1030;
import 'package:movei_app/features/auth/data/repositories/auth_reopsitories_impl.dart'
    as _i780;
import 'package:movei_app/features/auth/presentation/cubit/auth_cubit.dart'
    as _i909;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.shardPref,
      preResolve: true,
    );
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.singleton<_i940.AuthRemoteDataSources>(
      () => _i306.AuthRemoteApiDataSources(gh<_i361.Dio>()),
    );
    gh.factory<String>(() => registerModule.baseUrl, instanceName: 'BaseUrl');
    gh.singleton<_i341.AuthTokenDataSources>(
      () => _i840.AuthPrefTokenDataSoursec(gh<_i460.SharedPreferences>()),
    );
    gh.singleton<_i362.AuthReopsitories>(
      () => _i780.AuthReopsitoriesImpl(
        gh<_i940.AuthRemoteDataSources>(),
        gh<_i341.AuthTokenDataSources>(),
      ),
    );
    gh.singleton<_i804.Login>(() => _i804.Login(gh<_i362.AuthReopsitories>()));
    gh.singleton<_i1030.Register>(
      () => _i1030.Register(gh<_i362.AuthReopsitories>()),
    );
    gh.singleton<_i909.AuthCubit>(
      () => _i909.AuthCubit(gh<_i804.Login>(), gh<_i1030.Register>()),
    );
    return this;
  }
}

class _$RegisterModule extends _i976.RegisterModule {}



