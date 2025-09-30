import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/widgets/custom_elevated_button.dart';
import 'package:movei_app/core/widgets/custom_text_field.dart';
import 'package:movei_app/core/widgets/screen_app_bar.dart';

class ResetPasswordScreen extends StatefulWidget {
  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: ScreenAppBar(title: 'Reset Password'),
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(Insets.s20.sp),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
               
                children: [
                  Image.asset(
                    ImageAssets.forgerpassword,
                    height: Sizes.s430.h,
          
                    fit: BoxFit.fill,
                  ),
                  CustomTextField(
                    backgroundColor: ColorManager.primary,
                    hint: 'Enter Your Email',
                    textInputType: TextInputType.emailAddress,
                    controller: _emailController,
                    prefixIcon: Icon(
                      Icons.email,
                      color: ColorManager.white,
                      size: Sizes.s28.w,
                    ) ),
                    SizedBox(height: Sizes.s20.h,),
                    CustomElevatedButton(label: 'Verify Email', onTap: (){})
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose(){
    _emailController.dispose();
    super.dispose();
    
  }
}
