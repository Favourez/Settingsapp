import 'package:flutter/material.dart';
import 'package:settings_app/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      activeIcon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgRewind,
      activeIcon: ImageConstant.imgRewind,
      type: BottomBarEnum.Rewind,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgGroup37,
      activeIcon: ImageConstant.imgGroup37,
      type: BottomBarEnum.Group37,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgSearchGray900,
      activeIcon: ImageConstant.imgSearchGray900,
      type: BottomBarEnum.Searchgray900,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        boxShadow: [
          BoxShadow(
            color: appTheme.gray800.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -2,
            ),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: SizedBox(
              height: 64.v,
              width: 82.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 64.v,
                      width: 82.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    color: appTheme.gray800,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 16.v,
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: SizedBox(
              height: 64.v,
              width: 82.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 64.v,
                      width: 82.h,
                      decoration: BoxDecoration(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: bottomMenuList[index].activeIcon,
                    height: 40.v,
                    width: 32.h,
                    color: appTheme.gray900,
                    alignment: Alignment.center,
                    margin: EdgeInsets.symmetric(
                      horizontal: 25.h,
                      vertical: 12.v,
                    ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Rewind,
  Group37,
  Searchgray900,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    required this.type,
  });

  String icon;

  String activeIcon;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
