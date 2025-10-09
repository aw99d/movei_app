import 'package:equatable/equatable.dart';

class RegisterUser extends Equatable {
  final String email;
  final String password;
  final String name;
  final String phone;
  final int avaterId;
  final String id;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int v;

  RegisterUser({
    required this.email,
    required this.password,
    required this.name,
    required this.phone,
    required this.avaterId,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.v,
  });
  
  @override
  
  List<Object?> get props => [email , password , name , phone , avaterId , id ];
}
