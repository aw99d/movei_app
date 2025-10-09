abstract class AuthTokenDataSources {
  Future<void> saveToken(String token);

  Future<String> getToken();


}