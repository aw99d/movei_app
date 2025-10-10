

import 'register_model.dart';


class RegisterResponse {
	final String message;
	final RegisterModel registerModel;

	const RegisterResponse({required this.message, required this.registerModel});

	factory RegisterResponse.fromJson(Map<String, dynamic> json) {
		return RegisterResponse(
			message: json['message'] as String,
			registerModel:  RegisterModel.fromJson(json['data'] as Map<String, dynamic>),
		);
	}


}
