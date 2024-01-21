import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';
import 'package:settings_app/presentation/settings_page_light_page/settings_page_light_page.dart';
import 'package:settings_app/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class SettingsPageLightContainerScreen extends StatelessWidget {
  SettingsPageLightContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.settingsPageLightPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
