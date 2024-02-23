import 'package:flutter/material.dart';
import 'package:bessx_s_application2/core/app_export.dart';
import 'package:bessx_s_application2/widgets/custom_elevated_button.dart';
import 'package:bessx_s_application2/widgets/custom_icon_button.dart';
import 'package:bessx_s_application2/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                appTheme.greenA200,
                appTheme.teal20089,
                appTheme.lightBlue200,
              ],
            ),
          ),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 23.h,
                  vertical: 43.v,
                ),
                child: Column(
                  children: [
                    Spacer(),
                    Text(
                      "Check Me",
                      style: theme.textTheme.displayMedium,
                    ),
                    SizedBox(height: 40.v),
                    Container(
                      margin: EdgeInsets.only(left: 1.h),
                      padding: EdgeInsets.symmetric(
                        horizontal: 29.h,
                        vertical: 67.v,
                      ),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder40,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 3.v),
                          Text(
                            "Login",
                            style: theme.textTheme.displaySmall,
                          ),
                          SizedBox(height: 4.v),
                          Text(
                            "Email",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 2.v),
                          CustomTextFormField(
                            controller: emailController,
                            hintText: "username@gmail.com",
                            textInputType: TextInputType.emailAddress,
                          ),
                          SizedBox(height: 18.v),
                          Text(
                            "Password",
                            style: theme.textTheme.bodyMedium,
                          ),
                          SizedBox(height: 2.v),
                          CustomTextFormField(
                            controller: passwordController,
                            hintText: "Password",
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: Container(
                              margin:
                                  EdgeInsets.fromLTRB(30.h, 11.v, 17.h, 11.v),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  5.h,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEye,
                                height: 10.v,
                                width: 12.h,
                              ),
                            ),
                            suffixConstraints: BoxConstraints(
                              maxHeight: 33.v,
                            ),
                            obscureText: true,
                            contentPadding: EdgeInsets.only(
                              left: 17.h,
                              top: 8.v,
                              bottom: 8.v,
                            ),
                          ),
                          SizedBox(height: 10.v),
                          Text(
                            "Forgot Password?",
                            style: CustomTextStyles.bodySmallGilroyOnPrimary,
                          ),
                          SizedBox(height: 24.v),
                          CustomElevatedButton(
                            text: "Sign in",
                          ),
                          SizedBox(height: 27.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(right: 101.h),
                              child: Text(
                                "or continue with",
                                style: theme.textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(height: 7.v),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: 33.v,
                                width: 101.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 37.h,
                                  vertical: 9.v,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgSettings,
                                  height: 15.v,
                                  width: 18.h,
                                  radius: BorderRadius.circular(
                                    7.h,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                              Container(
                                height: 33.v,
                                width: 101.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40.h,
                                  vertical: 8.v,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgAkarIconsGithubFill,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize,
                                  radius: BorderRadius.circular(
                                    7.h,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                              Container(
                                height: 33.v,
                                width: 101.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 40.h,
                                  vertical: 8.v,
                                ),
                                decoration:
                                    AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFacebook,
                                  height: 15.v,
                                  width: 18.h,
                                  radius: BorderRadius.circular(
                                    7.h,
                                  ),
                                  alignment: Alignment.topLeft,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 21.v),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 14.h,
                              right: 25.h,
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 1.v),
                                  child: Text(
                                    "Don’t have an account yet?",
                                    style: theme.textTheme.bodyMedium,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 7.h),
                                  child: Text(
                                    "Register for free",
                                    style: theme.textTheme.titleSmall,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildFrameTwo(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTwo(BuildContext context) {
    return Container(
      height: 82.v,
      width: 364.h,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 45.h,
        bottom: 10.v,
      ),
      child: Stack(
        alignment: Alignment.topLeft,
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              margin: EdgeInsets.only(
                left: 20.h,
                top: 43.v,
              ),
              decoration: AppDecoration.outlineGray.copyWith(
                borderRadius: BorderRadiusStyle.customBorderTL10,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 1.h),
                      ),
                      SizedBox(
                        width: 137.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 1.v),
                              child: Text(
                                "แผนที่",
                                style: theme.textTheme.bodySmall,
                              ),
                            ),
                            Text(
                              "ที่ถูกใจ",
                              style: theme.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37.v,
                    width: 40.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            "เพิ่มสถานที่",
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPlus,
                          height: 26.adaptSize,
                          width: 26.adaptSize,
                          alignment: Alignment.topCenter,
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgLock,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "โปรไฟล์",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 60.adaptSize,
              width: 60.adaptSize,
              padding: EdgeInsets.all(5.h),
              decoration: AppDecoration.fillGray.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder30,
              ),
              child: CustomIconButton(
                height: 50.adaptSize,
                width: 50.adaptSize,
                padding: EdgeInsets.all(13.h),
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgMaterialSymbolsMapOutline,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
