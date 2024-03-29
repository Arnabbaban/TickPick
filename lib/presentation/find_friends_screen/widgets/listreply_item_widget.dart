import '../controller/find_friends_controller.dart';
import '../models/listreply_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tickpick/core/app_export.dart';
import 'package:tickpick/widgets/custom_button.dart';
import 'package:tickpick/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ListreplyItemWidget extends StatelessWidget {
  ListreplyItemWidget(this.listreplyItemModelObj);

  ListreplyItemModel listreplyItemModelObj;

  var controller = Get.find<FindFriendsController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 60,
          width: 60,
          variant: IconButtonVariant.FillDeeporange50,
          child: CustomImageView(
            svgPath: ImageConstant.imgReply60x60,
          ),
        ),
        Padding(
          padding: getPadding(
            left: 20,
            top: 6,
            bottom: 7,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Obx(
                () => Text(
                  listreplyItemModelObj.typeTxt.value,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold18Gray900,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 7,
                ),
                child: Obx(
                  () => Text(
                    listreplyItemModelObj.descriptionTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomButton(
          height: getVerticalSize(
            32,
          ),
          width: getHorizontalSize(
            68,
          ),
          text: "lbl_invite".tr,
          margin: getMargin(
            left: 47,
            top: 14,
            bottom: 14,
          ),
        ),
      ],
    );
  }
}
