import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';
import 'package:settings_app/presentation/settings_page_light_page/settings_page_light_page.dart';
import 'package:settings_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:settings_app/widgets/app_bar/appbar_title.dart';
import 'package:settings_app/widgets/app_bar/custom_app_bar.dart';
import 'package:settings_app/widgets/custom_bottom_bar.dart';
import 'package:settings_app/widgets/custom_switch.dart';

class SettingsPageDarkScreen extends StatelessWidget {
  SettingsPageDarkScreen({Key? key})
      : super(
          key: key,
        );

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

  bool isSelectedSwitch2 = false;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

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
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 799.v,
                      width: 411.h,
                      decoration: BoxDecoration(
                        color: appTheme.blueGray900,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      padding: EdgeInsets.symmetric(vertical: 24.v),
                      decoration: AppDecoration.outlineGray90051.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.h),
                              child: Row(
                                children: [
                                  Container(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    decoration: AppDecoration.outlineIndigoF,
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage4,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          radius: BorderRadius.circular(
                                            20.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgImage5,
                                          height: 40.adaptSize,
                                          width: 40.adaptSize,
                                          radius: BorderRadius.circular(
                                            20.h,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 12.h,
                                      top: 9.v,
                                      bottom: 8.v,
                                    ),
                                    child: Text(
                                      "Yennefer Doe",
                                      style:
                                          CustomTextStyles.bodyLargeWhiteA700,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Divider(),
                          SizedBox(height: 25.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text(
                                "Account Settings",
                                style: CustomTextStyles.bodyLargeGray500,
                              ),
                            ),
                          ),
                          SizedBox(height: 28.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: _buildAccountSettings(
                              context,
                              changePasswordText: "Edit profile",
                              arrowRightImage:
                                  ImageConstant.imgArrowRightWhiteA700,
                            ),
                          ),
                          SizedBox(height: 31.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: _buildAccountSettings(
                              context,
                              changePasswordText: "Change password",
                              arrowRightImage:
                                  ImageConstant.imgArrowRightWhiteA700,
                            ),
                          ),
                          SizedBox(height: 32.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: _buildAccountSettings(
                              context,
                              changePasswordText: "Add a payment method",
                              arrowRightImage: ImageConstant.imgGrid,
                            ),
                          ),
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
                              padding: EdgeInsets.only(left: 25.h),
                              child: Text(
                                "More",
                                style: CustomTextStyles.bodyLargeGray500,
                              ),
                            ),
                          ),
                          SizedBox(height: 31.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: _buildAccountSettings(
                              context,
                              changePasswordText: "About us",
                              arrowRightImage:
                                  ImageConstant.imgArrowRightWhiteA700,
                            ),
                          ),
                          SizedBox(height: 32.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: _buildAccountSettings(
                              context,
                              changePasswordText: "Privacy policy",
                              arrowRightImage:
                                  ImageConstant.imgArrowRightWhiteA700,
                            ),
                          ),
                          SizedBox(height: 31.v),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 25.h),
                            child: _buildAccountSettings(
                              context,
                              changePasswordText: "Terms and conditions",
                              arrowRightImage:
                                  ImageConstant.imgArrowRightWhiteA700,
                            ),
                          ),
                          SizedBox(height: 31.v),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgSearch,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 32.v,
          bottom: 198.v,
        ),
      ),
      title: AppbarTitle(
        text: "Settings",
        margin: EdgeInsets.only(
          left: 8.h,
          top: 37.v,
          bottom: 198.v,
        ),
      ),
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildPushNotifications(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "Push notifications",
              style: CustomTextStyles.bodyLargeWhiteA700,
            ),
          ),
          SizedBox(
            height: 29.v,
            width: 56.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomSwitch(
                  alignment: Alignment.center,
                  value: isSelectedSwitch,
                  onChange: (value) {
                    isSelectedSwitch = value;
                  },
                ),
                CustomSwitch(
                  alignment: Alignment.center,
                  value: isSelectedSwitch1,
                  onChange: (value) {
                    isSelectedSwitch1 = value;
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDarkMode(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 3.v),
            child: Text(
              "Dark mode",
              style: CustomTextStyles.bodyLargeWhiteA700,
            ),
          ),
          CustomSwitch(
            value: isSelectedSwitch2,
            onChange: (value) {
              isSelectedSwitch2 = value;
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  /// Common widget
  Widget _buildAccountSettings(
    BuildContext context, {
    required String changePasswordText,
    required String arrowRightImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.v),
          child: Text(
            changePasswordText,
            style: CustomTextStyles.bodyLargeWhiteA700.copyWith(
              color: appTheme.whiteA700,
            ),
          ),
        ),
        CustomImageView(
          imagePath: arrowRightImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Rewind:
        return "/";
      case BottomBarEnum.Group37:
        return "/";
      case BottomBarEnum.Searchgray900:
        return AppRoutes.settingsPageLightPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.settingsPageLightPage:
        return SettingsPageLightPage();
      default:
        return DefaultWidget();
    }
  }
}
