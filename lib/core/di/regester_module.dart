import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:movei_app/core/widgets/api_constaonst.dart';
import 'package:shared_preferences/shared_preferences.dart';

@module  
abstract class RegisterModule {  
 
  @Named("BaseUrl")  
  String get baseUrl => 'My base url';  
  

  @lazySingleton  
  Dio get dio => Dio(BaseOptions(
    baseUrl: ApiConstaonst.basURL,
    receiveDataWhenStatusError: true
  ));  

   
  @preResolve
  Future<SharedPreferences> get shardPref => SharedPreferences.getInstance();  
  
}