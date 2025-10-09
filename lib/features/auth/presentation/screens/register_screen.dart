import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/font_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/routes/routes.dart';
import 'package:movei_app/core/utils/ui_utils.dart';
import 'package:movei_app/core/utils/validator.dart';
import 'package:movei_app/core/widgets/custom_elevated_button.dart';
import 'package:movei_app/core/widgets/custom_text_field.dart';
import 'package:movei_app/core/widgets/screen_app_bar.dart';
import 'package:movei_app/features/auth/data/models/register_request.dart';
import 'package:movei_app/features/auth/presentation/cubit/auth_cubit.dart';
import 'package:movei_app/features/auth/presentation/cubit/auth_state.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

  TextEditingController _nameController = TextEditingController();

  TextEditingController _phoneController = TextEditingController();

  TextEditingController _confirmPasswordController = TextEditingController();
  int _selectedAvatarId = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: ScreenAppBar(title: 'Register'),
      body: Padding(
        padding: EdgeInsets.all(Insets.s20.sp),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CarouselSlider(
                items: [1, 2, 3, 4, 5, 6, 7, 8, 9].map((i) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedAvatarId = i; // هنا تختار الصورة
                      });
                    },
                    child: Container(
                      child: Image.asset(
                        ImageAssets.avatar_1.replaceFirst('1', '$i'),
                        height: Sizes.s100.h,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  enableInfiniteScroll: true,
                  enlargeCenterPage: true,
                  enlargeFactor: 0.55,
                  viewportFraction: 0.37,
                ),
              ),

              Form(
                key: _formKey,
                child: Column(
                  children: [
                    CustomTextField(
                      backgroundColor: ColorManager.primary,
                      hint: 'Enter Your Name',

                      textInputType: TextInputType.name,
                      validation: Validator.validateUsername,
                      controller: _nameController,
                      prefixIcon: SvgPicture.asset(
                        SvgAssets.user,
                        width: Sizes.s28.w,
                        height: Sizes.s20.h,
                        color: ColorManager.white,
                      ),
                    ),
                    SizedBox(height: Sizes.s14.h),
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
                      isObscured: true,
                      textInputType: TextInputType.visiblePassword,
                      validation: Validator.validatePassword,
                      controller: _passwordController,

                      prefixIcon: SvgPicture.asset(
                        SvgAssets.password,
                        width: Sizes.s28.w,
                        height: Sizes.s20.h,
                        color: ColorManager.white,
                      ),
                    ),
                    SizedBox(height: Sizes.s14.h),
                    CustomTextField(
                      backgroundColor: ColorManager.primary,
                      hint: 'Confirm Password',
                      isObscured: true,
                      textInputType: TextInputType.visiblePassword,
                      controller: _confirmPasswordController,
                      validation: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm your password';
                        }
                        if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                      prefixIcon: SvgPicture.asset(
                        SvgAssets.password,
                        width: Sizes.s28.w,
                        height: Sizes.s20.h,
                        color: ColorManager.white,
                      ),
                    ),
                    SizedBox(height: Sizes.s20.h),
                    CustomTextField(
                      backgroundColor: ColorManager.primary,
                      hint: 'Enter Your Phone',

                      textInputType: TextInputType.phone,
                      validation: Validator.validateUsername,
                      controller: _phoneController,
                      prefixIcon: SvgPicture.asset(
                        SvgAssets.phone,
                        width: Sizes.s28.w,
                        height: Sizes.s20.h,
                        color: ColorManager.white,
                      ),
                    ),
                    SizedBox(height: Sizes.s20.h),
                    BlocListener<AuthCubit ,AuthState >(
                      listener: (context, state){
                        if(state is RegisterLoding){
                          UIUtils.showLoading(context);
                        }else if(state is RegisterSuccess){
                          UIUtils.hideLoading(context);
                          Navigator.of(context).pushReplacementNamed(Routes.home);
                        }else if(state is RegisterError ){
                          UIUtils.hideLoading(context);
                          UIUtils.showMessage(state.message);
                        }
                      },
                      child: CustomElevatedButton(
                        label: 'Register',
                        onTap: () {
                         context.read<AuthCubit>().register(
                            RegisterRequest(
                              name: _nameController.text,
                              email: _emailController.text,
                              password: _passwordController.text,
                              phone: _phoneController.text,
                              avaterId: _selectedAvatarId
                                 
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: Sizes.s18.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: "Already Have Account ?  ",
                            style: getRegularStyle(
                              color: ColorManager.white,
                              fontSize: FontSize.s16,
                            ),
                            children: [
                              TextSpan(
                                text: ' Login',
                                style: getBoldStyle(
                                  color: ColorManager.yellow,
                                  fontSize: FontSize.s16,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    Navigator.of(
                                      context,
                                    ).pushNamed(Routes.login);
                                  },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }
}
