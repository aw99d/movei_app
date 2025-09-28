import 'package:flutter/material.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';

class RegisterScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
 return Center(child: Text('data' , style: getBoldStyle(color: ColorManager.containerGray),),);
  }
}