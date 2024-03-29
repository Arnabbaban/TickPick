import 'package:flutter/material.dart';
import 'package:tickpick/core/app_export.dart';

class CustomBottomBar extends StatelessWidget {
  CustomBottomBar({this.onChanged});

  RxInt selectedIndex = 0.obs;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClock,
      title: "lbl_discover".tr,
      type: BottomBarEnum.Discover,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgPlus40x40,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
      isCircle: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgCar,
      title: "lbl_inbox".tr,
      type: BottomBarEnum.Inbox,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgUser1,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    )
  ];

  Function(BottomBarEnum)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            getHorizontalSize(
              16,
            ),
          ),
          topRight: Radius.circular(
            getHorizontalSize(
              16,
            ),
          ),
        ),
      ),
      child: Obx(
        () => BottomNavigationBar(
          backgroundColor: Colors.transparent,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          currentIndex: selectedIndex.value,
          type: BottomNavigationBarType.fixed,
          items: List.generate(bottomMenuList.length, (index) {
            if (bottomMenuList[index].isCircle) {
              return BottomNavigationBarItem(
                icon: Container(
                  padding: getPadding(
                    left: 13,
                    right: 13,
                  ),
                  decoration: AppDecoration.fillDeeporangeA40001.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                        svgPath: bottomMenuList[index].icon,
                        height: getSize(
                          40,
                        ),
                        width: getSize(
                          40,
                        ),
                        color: ColorConstant.gray500,
                      ),
                    ],
                  ),
                ),
                label: '',
              );
            }
            return BottomNavigationBarItem(
              icon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    color: ColorConstant.gray500,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium10.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                        color: ColorConstant.gray500,
                      ),
                    ),
                  ),
                ],
              ),
              activeIcon: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: getSize(
                      24,
                    ),
                    width: getSize(
                      24,
                    ),
                    color: ColorConstant.deepOrangeA40001,
                  ),
                  Padding(
                    padding: getPadding(
                      top: 2,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold10.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                        color: ColorConstant.deepOrangeA40001,
                      ),
                    ),
                  ),
                ],
              ),
              label: '',
            );
          }),
          onTap: (index) {
            selectedIndex.value = index;
            onChanged?.call(bottomMenuList[index].type);
          },
        ),
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Discover,
  Inbox,
  Profile,
}

class BottomMenuModel {
  BottomMenuModel(
      {required this.icon,
      this.title,
      required this.type,
      this.isCircle = false});

  String icon;

  String? title;

  BottomBarEnum type;

  bool isCircle;
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
