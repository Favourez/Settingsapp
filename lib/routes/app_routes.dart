import 'package:flutter/material.dart';
import 'package:settings_app/presentation/settings_page_light_container_screen/settings_page_light_container_screen.dart';
import 'package:settings_app/presentation/settings_page_dark_one_screen/settings_page_dark_one_screen.dart';
import 'package:settings_app/presentation/settings_by_user_screen/settings_by_user_screen.dart';
import 'package:settings_app/presentation/settings_page_light_one_screen/settings_page_light_one_screen.dart';
import 'package:settings_app/presentation/settings_page_dark_screen/settings_page_dark_screen.dart';
import 'package:settings_app/presentation/personalized_settings_screen/personalized_settings_screen.dart';
import 'package:settings_app/presentation/personalized_settings_light_screen/personalized_settings_light_screen.dart';
import 'package:settings_app/presentation/dribbble_shot_hd_one_screen/dribbble_shot_hd_one_screen.dart';
import 'package:settings_app/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String settingsPageLightPage = '/settings_page_light_page';

  static const String settingsPageLightContainerScreen =
      '/settings_page_light_container_screen';

  static const String settingsPageDarkOneScreen =
      '/settings_page_dark_one_screen';

  static const String settingsByUserScreen = '/settings_by_user_screen';

  static const String settingsPageLightOneScreen =
      '/settings_page_light_one_screen';

  static const String settingsPageDarkScreen = '/settings_page_dark_screen';

  static const String personalizedSettingsScreen =
      '/personalized_settings_screen';

  static const String personalizedSettingsLightScreen =
      '/personalized_settings_light_screen';

  static const String dribbbleShotHdOneScreen = '/dribbble_shot_hd_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    settingsPageLightContainerScreen: (context) =>
        SettingsPageLightContainerScreen(),
    settingsPageDarkOneScreen: (context) => SettingsPageDarkOneScreen(),
    settingsByUserScreen: (context) => SettingsByUserScreen(),
    settingsPageLightOneScreen: (context) => SettingsPageLightOneScreen(),
    settingsPageDarkScreen: (context) => SettingsPageDarkScreen(),
    personalizedSettingsScreen: (context) => PersonalizedSettingsScreen(),
    personalizedSettingsLightScreen: (context) =>
        PersonalizedSettingsLightScreen(),
    dribbbleShotHdOneScreen: (context) => DribbbleShotHdOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
