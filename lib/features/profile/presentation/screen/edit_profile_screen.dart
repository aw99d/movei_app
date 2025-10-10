import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:movei_app/core/resources/assets_manager.dart';
import 'package:movei_app/core/resources/color_manager.dart';
import 'package:movei_app/core/resources/styles_manager.dart';
import 'package:movei_app/core/resources/values_manager.dart';
import 'package:movei_app/core/utils/validator.dart';
import 'package:movei_app/core/widgets/custom_elevated_button.dart';
import 'package:movei_app/core/widgets/custom_text_field.dart';
import 'package:movei_app/core/widgets/screen_app_bar.dart';

class EditProfileScreen extends StatelessWidget {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _nameController = TextEditingController();

  TextEditingController _phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.black,
      appBar: ScreenAppBar(title: 'Pick Avatar'),
      body: Padding(
        padding: EdgeInsets.all(Insets.s16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      backgroundColor: ColorManager.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(20.r),
                        ),
                      ),
                      builder: (context) {
                        return Padding(
                          padding: EdgeInsets.all(Insets.s16),
                          child: GridView.builder(
                            shrinkWrap: true,
                            physics: NeverScrollableScrollPhysics(),
                            itemCount: 8,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 3,
                                  crossAxisSpacing: 8,
                                  mainAxisSpacing: 8,
                                ),
                            itemBuilder: (context, i) {
                              return GestureDetector(
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: Image.asset(
                                  ImageAssets.avatar_1.replaceFirst(
                                    '1',
                                    '${i + 1}',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                  child: Image.asset(
                    ImageAssets.avatar_7,
                    width: Sizes.s100.w,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
            SizedBox(height: Sizes.s24.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                            hint: 'Enter Your Phone',
                            textInputType: TextInputType.emailAddress,
                            validation: Validator.validateUsername,
                            controller: _phoneController,
                            prefixIcon: SvgPicture.asset(
                              SvgAssets.phone,
                              width: Sizes.s28.w,
                              height: Sizes.s20.h,
                              color: ColorManager.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Sizes.s10.h),
                    Text(
                      'Reset Password ?',
                      style: getMediumStyle(
                        color: ColorManager.white,
                        fontSize: 16.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(bottom: Sizes.s24.h),
              child: Column(
                children: [
                  CustomElevatedButton(label: 'Delete Account', onTap: () {}),
                  SizedBox(height: Sizes.s10.h),
                  CustomElevatedButton(
                    label: 'Update Data',
                    onTap: () {},
                    backgroundColor: ColorManager.red,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
