
import 'package:movei_app/features/auth/data/domain/enities/register_user.dart';
import 'package:movei_app/features/auth/data/models/register_model.dart';

extension UserMappers on RegisterModel {
  RegisterUser get toEntity => RegisterUser(
    email: email,
    password: password,
    name: name,
    phone: phone,
    avaterId: avaterId,
    id: id,
    createdAt: createdAt,
    updatedAt: updatedAt,
    v: v,
  );
}