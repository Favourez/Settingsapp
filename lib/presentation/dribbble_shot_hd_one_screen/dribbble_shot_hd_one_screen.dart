import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';

class DribbbleShotHdOneScreen extends StatelessWidget {
  const DribbbleShotHdOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.gray100,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.gray100,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgDribbbleShotHd,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: 800.h,
            child: Padding(
              padding: EdgeInsets.only(left: 97.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildSettingsPageLightImage(context),
                  SizedBox(
                    height: 600.v,
                    width: 400.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 600.v,
                            width: 400.h,
                            decoration: BoxDecoration(
                              color: appTheme.blueGray90001,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 600.v,
                            width: 390.h,
                            padding: EdgeInsets.symmetric(vertical: 94.v),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                  ImageConstant.imgGroup23,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: _buildSettingsPageDarkImage(context),
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
    );
  }

  /// Section Widget
  Widget _buildSettingsPageLightImage(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgSettingsPageLight,
      height: 411.v,
      width: 205.h,
      radius: BorderRadius.circular(
        6.h,
      ),
      margin: EdgeInsets.only(
        top: 95.v,
        bottom: 94.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsPageDarkImage(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgSettingsPageDark,
      height: 411.v,
      width: 205.h,
      radius: BorderRadius.circular(
        6.h,
      ),
      alignment: Alignment.centerLeft,
    );
  }
}
