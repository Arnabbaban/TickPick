import '../controller/comments_controller.dart';
import '../models/comments_item_model.dart';
import 'package:flutter/material.dart';
import 'package:tickpick/core/app_export.dart';

// ignore: must_be_immutable
class CommentsItemWidget extends StatelessWidget {
  CommentsItemWidget(this.commentsItemModelObj);

  CommentsItemModel commentsItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse48x481,
                height: getSize(
                  48,
                ),
                width: getSize(
                  48,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    24,
                  ),
                ),
              ),
              Padding(
                padding: getPadding(
                  left: 16,
                  top: 14,
                  bottom: 13,
                ),
                child: Obx(
                  () => Text(
                    commentsItemModelObj.nameTxt.value,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold16Gray900.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ),
              Spacer(),
              CustomImageView(
                svgPath: ImageConstant.imgClock24x24,
                height: getSize(
                  24,
                ),
                width: getSize(
                  24,
                ),
                margin: getMargin(
                  top: 12,
                  bottom: 12,
                ),
              ),
            ],
          ),
          Container(
            width: getHorizontalSize(
              370,
            ),
            margin: getMargin(
              top: 13,
              right: 9,
            ),
            child: Text(
              "msg_lorem_ipsum_dol3".tr,
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRegular14Gray900.copyWith(
                letterSpacing: getHorizontalSize(
                  0.2,
                ),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              top: 10,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIconlyboldheart36x36,
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 4,
                    bottom: 4,
                  ),
                  child: Obx(
                    () => Text(
                      commentsItemModelObj.idTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium12Gray900.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 29,
                    top: 5,
                    bottom: 3,
                  ),
                  child: Obx(
                    () => Text(
                      commentsItemModelObj.durationTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanMedium12Gray700.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.2,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 29,
                    top: 5,
                    bottom: 3,
                  ),
                  child: Text(
                    "lbl_reply".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanMedium12Gray700.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
