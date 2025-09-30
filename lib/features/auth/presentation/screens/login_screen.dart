import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/font_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/core/utils/validator.dart';
import 'package:movei_app/core/widgets/custom_elevated_button.dart';
import 'package:movei_app/core/widgets/custom_text_field.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(Insets.s20.sp),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image.asset(
                    ImageAssets.logo,
                    height: Sizes.s300.h,

                    fit: BoxFit.fill,
                  ),

                  CustomTextField(
                    backgroundColor: ColorManager.primary,
                    hint: 'Enter Your Email',

                    textInputType: TextInputType.emailAddress,
                    validation: Validator.validateEmail,
                    controller: _emailController,
                    prefixIcon: SvgPicture.asset(
                      SvgAssets.email,
                      width: Sizes.s28.w,
                      height: Sizes.s20.h,
                      color: ColorManager.white,
                    ),
                  ),
                  SizedBox(height: Sizes.s14.h),
                  CustomTextField(
                    backgroundColor: ColorManager.primary,
                    hint: 'Enter Your Password',

                    textInputType: TextInputType.visiblePassword,
                    validation: Validator.validatePassword,
                    controller: _passwordController,
                    prefixIcon: SvgPicture.asset(
                      SvgAssets.password,
                      width: Sizes.s28.w,
                      height: Sizes.s20.h,
                      color: ColorManager.white,
                    ),
                    isObscured: true,
                  ),
                  SizedBox(height: Sizes.s8.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: 'Forgot Password?',
                          style: getMediumStyle(
                            color: ColorManager.yellow,
                            fontSize: FontSize.s16,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.of(context)
                                  .pushNamed(Routes.resetPassword);
                            },
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.s20.h),

                  CustomElevatedButton(label: 'login', onTap: () {}),
                  SizedBox(height: Sizes.s18.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account? ",
                          style: getRegularStyle(
                            color: ColorManager.white,
                            fontSize: FontSize.s16,
                          ),
                          children: [
                            TextSpan(
                              text: ' Create On',
                              style: getBoldStyle(
                                color: ColorManager.yellow,
                                fontSize: FontSize.s16,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                              
                                  Navigator.of(context).pushNamed(Routes.register);
                                },
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: Sizes.s20.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: Sizes.s100.w,
                        child: Divider(
                          thickness: 1,
                          color: ColorManager.yellow,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: Insets.s8.sp),
                        child: Text(
                          'Or',
                          style: getMediumStyle(
                            color: ColorManager.yellow,
                            fontSize: FontSize.s16,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: Sizes.s100.w,
                        child: Divider(
                          thickness: 1,
                          color: ColorManager.yellow,
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: Sizes.s20.h),
                  CustomElevatedButton(
                    prefixIcon: SvgPicture.asset(SvgAssets.google),
                    label: 'Login With Google',
                    onTap: () {
                      Navigator.of(context).pushReplacementNamed(Routes.home);
                          
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

    @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
