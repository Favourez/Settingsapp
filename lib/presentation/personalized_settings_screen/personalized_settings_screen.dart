import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';
import 'package:settings_app/presentation/settings_page_light_page/settings_page_light_page.dart';
import 'package:settings_app/widgets/app_bar/appbar_leading_image.dart';
import 'package:settings_app/widgets/app_bar/appbar_title.dart';
import 'package:settings_app/widgets/app_bar/custom_app_bar.dart';
import 'package:settings_app/widgets/custom_bottom_bar.dart';
import 'package:settings_app/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class PersonalizedSettingsScreen extends StatelessWidget {
  PersonalizedSettingsScreen({Key? key}) : super(key: key);

  bool isSelectedSwitch = false;

  bool isSelectedSwitch1 = false;

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
                                                          "Parametres personalise",
                                                          style: theme.textTheme
                                                              .bodyLarge))
                                                ]))),
                                        SizedBox(height: 24.v),
                                        Divider(),
                                        SizedBox(height: 24.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.h),
                                                child: Text(
                                                    "parametres des fichiers",
                                                    style: CustomTextStyles
                                                        .bodyLargeGray500))),
                                        SizedBox(height: 28.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildLUtilisationDes(
                                                context,
                                                textData:
                                                    "ajouter des comptes cloud",
                                                arrowImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildLUtilisationDes(
                                                context,
                                                textData:
                                                    "l'utilisation des données mobiles",
                                                arrowImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 32.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildLUtilisationDes(
                                                context,
                                                textData: "Corbeille",
                                                arrowImage:
                                                    ImageConstant.imgPlus)),
                                        SizedBox(height: 31.v),
                                        _buildSaisiedegrosfichiers(context),
                                        SizedBox(height: 32.v),
                                        _buildModeSombre(context),
                                        SizedBox(height: 24.v),
                                        Divider(),
                                        SizedBox(height: 22.v),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding:
                                                    EdgeInsets.only(left: 25.h),
                                                child: Text("confidentialité",
                                                    style: CustomTextStyles
                                                        .bodyLargeGray500))),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildLUtilisationDes(
                                                context,
                                                textData: "dossier sécurisé",
                                                arrowImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 32.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildLUtilisationDes(
                                                context,
                                                textData:
                                                    "à propos de mes fichiers",
                                                arrowImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 31.v),
                                        Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 25.h),
                                            child: _buildLUtilisationDes(
                                                context,
                                                textData:
                                                    "Terms and conditions",
                                                arrowImage: ImageConstant
                                                    .imgArrowRight)),
                                        SizedBox(height: 31.v)
                                      ])))
                        ])))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 56.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgSearch,
            margin: EdgeInsets.only(left: 16.h, top: 32.v, bottom: 198.v)),
        title: AppbarTitle(
            text: "Parametres",
            margin: EdgeInsets.only(left: 8.h, top: 35.v, bottom: 200.v)),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildSaisiedegrosfichiers(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapSaisiedegrosfichiers(context);
        },
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 5.v, bottom: 1.v),
                      child: Text("saisie de gros fichiers",
                          style: theme.textTheme.bodyLarge)),
                  CustomSwitch(
                      value: isSelectedSwitch,
                      onChange: (value) {
                        isSelectedSwitch = value;
                      })
                ])));
  }

  /// Section Widget
  Widget _buildModeSombre(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 25.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Text("mode sombre", style: theme.textTheme.bodyLarge)),
          CustomSwitch(
              value: isSelectedSwitch1,
              onChange: (value) {
                isSelectedSwitch1 = value;
              })
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildLUtilisationDes(
    BuildContext context, {
    required String textData,
    required String arrowImage,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
          padding: EdgeInsets.only(bottom: 2.v),
          child: Text(textData,
              style: theme.textTheme.bodyLarge!
                  .copyWith(color: appTheme.black900))),
      CustomImageView(
          imagePath: arrowImage,
          height: 24.adaptSize,
          width: 24.adaptSize,
          margin: EdgeInsets.only(left: 33.h))
    ]);
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

  /// Navigates to the settingsPageLightOneScreen when the action is triggered.
  onTapSaisiedegrosfichiers(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsPageLightOneScreen);
  }
}
