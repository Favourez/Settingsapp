import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: 375.h,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings page light - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.settingsPageLightContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings page dark One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageDarkOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings by user",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsByUserScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings page light One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageLightOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Settings page dark",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.settingsPageDarkScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Personalized settings",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.personalizedSettingsScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "personalized settings light",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.personalizedSettingsLightScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Dribbble Shot HD - One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.dribbbleShotHdOneScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
