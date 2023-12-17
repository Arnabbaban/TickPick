import '../choose_your_interest_screen/widgets/chip_item_widget.dart';import 'controller/choose_your_interest_controller.dart';import 'models/chip_item_model.dart';import 'package:flutter/material.dart';import 'package:tickpick/core/app_export.dart';import 'package:tickpick/widgets/app_bar/appbar_image.dart';import 'package:tickpick/widgets/app_bar/appbar_title.dart';import 'package:tickpick/widgets/app_bar/custom_app_bar.dart';import 'package:tickpick/widgets/custom_button.dart';class ChooseYourInterestScreen extends GetWidget<ChooseYourInterestController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft();}), title: AppbarTitle(text: "msg_choose_your_int".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(all: 24), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Container(width: getHorizontalSize(367), margin: getMargin(right: 12), child: Text("msg_choose_your_int2".tr, maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium18.copyWith(letterSpacing: getHorizontalSize(0.2)))), Padding(padding: getPadding(top: 49), child: Obx(() => Wrap(runSpacing: getVerticalSize(5), spacing: getHorizontalSize(5), children: List<Widget>.generate(controller.chooseYourInterestModelObj.value.chipItemList.value.length, (index) {ChipItemModel model = controller.chooseYourInterestModelObj.value.chipItemList.value[index]; return ChipItemWidget(model);})))), Spacer(), Padding(padding: getPadding(bottom: 23), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_skip".tr, margin: getMargin(right: 6), variant: ButtonVariant.FillDeeporange50, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1, onTap: () {onTapSkip();})), Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_continue".tr, margin: getMargin(left: 6), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapContinue();}))]))])))); } 
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
onTapContinue() { Get.toNamed(AppRoutes.tellUsAboutYourselfScreen, ); } 
onTapArrowleft() { Get.back(); } 
 }
