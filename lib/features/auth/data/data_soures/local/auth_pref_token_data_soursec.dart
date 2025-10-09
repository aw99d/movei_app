
import 'package:injectable/injectable.dart';
import 'package:movei_app/core/error/app_expection.dart';
import 'package:movei_app/core/widgets/api_constaonst.dart';
import 'package:movei_app/features/auth/data/data_soures/local/auth_token_data_sources.dart';
import 'package:shared_preferences/shared_preferences.dart';


@Singleton(as:AuthTokenDataSources)
class AuthPrefTokenDataSoursec  implements AuthTokenDataSources{
final SharedPreferences _sharedPreferences;
const AuthPrefTokenDataSoursec(this._sharedPreferences);

  @override
  Future<String> getToken() async {
  try{
   return _sharedPreferences.getString(CashConstaonst.tokenKey)!;
}catch(exception){
  throw LocalExpxtion('Failed to get token');
}
  }

  @override
  Future<void> saveToken(String token)async {
  
try{ 
 await _sharedPreferences.setString( CashConstaonst.tokenKey , token);}catch(exception){
  throw LocalExpxtion('failed save token');
 }
  }
}