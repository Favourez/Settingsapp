import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';
import 'package:settings_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:settings_app/widgets/app_bar/appbar_title.dart';
import 'package:settings_app/widgets/app_bar/custom_app_bar.dart';
import 'package:settings_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class SettingsPageLightPage extends StatelessWidget {
  SettingsPageLightPage({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 799.v,
                        width: 411.h,
                        child:
                            Stack(alignment: Alignment.bottomCenter, children: [
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  height: 799.v,
                                  width: 411.h,
                                  decoration:
                                      BoxDecoration(color: appTheme.gray100))),
                          Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                  margin:
                                      EdgeInsets.symmetric(horizontal: 16.h),
                                  padding: EdgeInsets.symmetric(vertical: 24.v),
                                  decoration: AppDecoration.outlineGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder16),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.h),
                                                child: Row(children: [
                                                  Container(
                                                      height: 40.adaptSize,
                                                      width: 40.adaptSize,
                                                      decoration: AppDecoration
                                                          .outlineIndigoF,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage4,
                                                                height: 40
                                                                    .adaptSize,
                                                                width: 40
                                                                    .adaptSize,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        20.h),
                                                                alignment:
                                                                    Alignment
                                                                        .center),
                                                            CustomImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgImage5,
                                                                height: 40
                                                                    .adaptSize,
                                                                width: 40
                                                                    .adaptSize,
                                                                radius: BorderRadius
                                                                    .circular(
                                                                        20.h),
                                                                alignment:
                                                                    Alignment
                                                                        .center)
                                                          ])),
                                                  Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 12.h,
                                                          top: 11.v,
                                                          bottom: 6.v),
                                                      child: Text(
                                                          "User Settings",
                                                          style: theme.textTheme
                                                              .bodyLarge))
                                                ]))),
                                        SizedBox(height: 24.v),
                                        Divider(),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 25.h, right: 55.h),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  bottom: 4.v),
                                                          child: Text(
                                                              "Account Settings",
                                                              style: CustomTextStyles
                                                                  .bodyLargeGray500)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtFR(context);
                                                          },
                                                          child: Container(
                                                              width: 60.h,
                                                              padding: EdgeInsets
                                                                  .symmetric(
                                                                      horizontal:
                                                                          14.h,
                                                                      vertical:
                                                                          2.v),
                                                              decoration:
                                                                  AppDecoration
                                                                      .fillBlueGray,
                                                              child: Text("FR",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)))
                                                    ]))),
                                        SizedBox(height: 24.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildChangePassword(context,
                                                changePasswordText:
                                                    "Edit profile",
                                                arrowRightImage:
                                                    ImageConstant.imgArrowRight,
                                                onTapChangePassword: () {
                                              onTapChangePassword(context);
                                            })),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildChangePassword(context,
                                                changePasswordText:
                                                    "Change password",
                                                arrowRightImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 32.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildChangePassword(context,
                                                changePasswordText:
                                                    "Add a payment method",
                                                arrowRightImage:
                                                    ImageConstant.imgPlus)),
                                        SizedBox(height: 29.v),
                                        _buildPushNotifications(context),
                                        SizedBox(height: 32.v),
                                        _buildDarkMode(context),
                                        SizedBox(height: 24.v),
                                        Divider(),
                                        SizedBox(height: 23.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.h),
                                                child: Text("More",
                                                    style: CustomTextStyles
                                                        .bodyLargeGray500))),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildChangePassword(context,
                                                changePasswordText: "About us",
                                                arrowRightImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 32.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildChangePassword(context,
                                                changePasswordText:
                                                    "Privacy policy",
                                                arrowRightImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildChangePassword(context,
                                                changePasswordText:
                                                    "Terms and conditions",
                                                arrowRightImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 31.v)
                                      ])))
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(left: 16.h, top: 32.v, bottom: 198.v)),
        title: AppbarTitle(
            text: "Settings",
            margin: EdgeInsets.only(left: 8.h, top: 37.v, bottom: 198.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPushNotifications(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapPushNotifications(context);
        },
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.symmetric(vertical: 3.v),
                      child: Text("Push notifications",
                          style: theme.textTheme.bodyLarge)),
                  CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        isSelectedSwitch = value;
                      })
                ])));
  }

  /// Section Widget
  Widget _buildDarkMode(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("Dark mode", style: theme.textTheme.bodyLarge)),
          CustomSwitch(
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              })
        ]));
  }

  /// Common widget
  Widget _buildChangePassword(
    BuildContext context, {
    required String changePasswordText,
    required String arrowRightImage,
    Function? onTapChangePassword,
  }) {
    return GestureDetector(
        onTap: () {
          onTapChangePassword!.call();
        },
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 1.v),
              child: Text(changePasswordText,
                  style: theme.textTheme.bodyLarge!
                      .copyWith(color: appTheme.black900))),
          CustomImageView(
              imagePath: arrowRightImage,
              height: 24.adaptSize,
              width: 24.adaptSize)
        ]));
  }

  /// Navigates to the settingsByUserScreen when the action is triggered.
  onTapTxtFR(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsByUserScreen);
  }

  /// Navigates to the personalizedSettingsLightScreen when the action is triggered.
  onTapChangePassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.personalizedSettingsLightScreen);
  }

  /// Navigates to the settingsPageLightOneScreen when the action is triggered.
  onTapPushNotifications(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageLightOneScreen);
  }
}
