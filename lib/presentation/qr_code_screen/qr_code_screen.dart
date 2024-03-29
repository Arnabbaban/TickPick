import 'controller/qr_code_controller.dart';
import 'package:flutter/material.dart';
import 'package:tickpick/core/app_export.dart';
import 'package:tickpick/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class QrCodeScreen extends GetWidget<QrCodeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: size.width,
          height: size.height,
          padding: getPadding(
            bottom: 58,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(
                1,
                1,
              ),
              end: Alignment(
                0,
                0,
              ),
              colors: [
                ColorConstant.deepOrangeA400,
                ColorConstant.orange600,
              ],
            ),
          ),
          child: Container(
            width: double.maxFinite,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: getMargin(
                    top: 29,
                  ),
                  color: ColorConstant.whiteA700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusStyle.roundedBorder20,
                  ),
                  child: Container(
                    height: getSize(
                      300,
                    ),
                    width: getSize(
                      300,
                    ),
                    padding: getPadding(
                      all: 18,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Stack(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgVectorBlack900,
                          height: getSize(
                            262,
                          ),
                          width: getSize(
                            262,
                          ),
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    top: 22,
                  ),
                  child: Text(
                    "lbl_andrew_ainsley".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBold24WhiteA700,
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomButton(
          height: getVerticalSize(
            58,
          ),
          text: "lbl_scan_qr_code".tr,
          margin: getMargin(
            left: 24,
            right: 24,
            bottom: 48,
          ),
          variant: ButtonVariant.FillDeeporange50,
          shape: ButtonShape.RoundedBorder16,
          padding: ButtonPadding.PaddingT19,
          fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1,
          prefixWidget: Container(
            margin: getMargin(
              right: 8,
            ),
            child: CustomImageView(
              svgPath: ImageConstant.imgCar20x20,
            ),
          ),
        ),
      ),
    );
  }
}
