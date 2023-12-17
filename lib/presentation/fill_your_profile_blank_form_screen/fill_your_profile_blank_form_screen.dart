import 'controller/fill_your_profile_blank_form_controller.dart';import 'package:country_pickers/country.dart';import 'package:flutter/material.dart';import 'package:tickpick/core/app_export.dart';import 'package:tickpick/widgets/app_bar/appbar_image.dart';import 'package:tickpick/widgets/app_bar/appbar_title.dart';import 'package:tickpick/widgets/app_bar/custom_app_bar.dart';import 'package:tickpick/widgets/custom_button.dart';import 'package:tickpick/widgets/custom_phone_number.dart';import 'package:tickpick/widgets/custom_text_form_field.dart';class FillYourProfileBlankFormScreen extends GetWidget<FillYourProfileBlankFormController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(48), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 10), onTap: () {onTapArrowleft3();}), title: AppbarTitle(text: "msg_fill_your_profi".tr, margin: getMargin(left: 16))), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 47, right: 24, bottom: 47), child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [Container(height: getSize(140), width: getSize(140), child: Stack(alignment: Alignment.bottomRight, children: [CustomImageView(imagePath: ImageConstant.imgEllipse140x140, height: getSize(140), width: getSize(140), radius: BorderRadius.circular(getHorizontalSize(70)), alignment: Alignment.center), CustomImageView(svgPath: ImageConstant.imgEdit, height: getSize(35), width: getSize(35), alignment: Alignment.bottomRight)])), CustomTextFormField(focusNode: FocusNode(), controller: controller.statusDefaultController, hintText: "lbl_full_name".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingAll19), CustomTextFormField(focusNode: FocusNode(), controller: controller.statusDefaultOneController, hintText: "lbl_nickname".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingAll19), CustomTextFormField(focusNode: FocusNode(), controller: controller.statusDefaultTwoController, hintText: "lbl_email".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT19_2, textInputType: TextInputType.emailAddress, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgMail)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), Padding(padding: getPadding(top: 24), child: Obx(() => CustomPhoneNumber(country: controller.selectedCountry.value, controller: controller.phoneNumberController, onTap: (Country country) {controller.selectedCountry.value = country;}))), CustomTextFormField(focusNode: FocusNode(), controller: controller.statusDefaultThreeController, hintText: "lbl_address".tr, margin: getMargin(top: 24), padding: TextFormFieldPadding.PaddingT19_2, textInputAction: TextInputAction.done, suffix: Container(margin: getMargin(left: 30, top: 18, right: 20, bottom: 18), child: CustomImageView(svgPath: ImageConstant.imgLocation)), suffixConstraints: BoxConstraints(maxHeight: getVerticalSize(56))), Spacer(), Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_skip".tr, margin: getMargin(right: 6), variant: ButtonVariant.FillDeeporange50, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16DeeporangeA40001_1, onTap: () {onTapSkip();})), Expanded(child: CustomButton(height: getVerticalSize(58), text: "lbl_continue".tr, margin: getMargin(left: 6), variant: ButtonVariant.OutlineDeeporangeA40035, shape: ButtonShape.RoundedBorder16, padding: ButtonPadding.PaddingAll18, fontStyle: ButtonFontStyle.UrbanistRomanBold16WhiteA700, onTap: () {onTapContinue();}))])])))); } 
onTapSkip() { Get.toNamed(AppRoutes.homeContainerScreen, ); } 
onTapContinue() { Get.toNamed(AppRoutes.createNewPinScreen, ); } 
onTapArrowleft3() { Get.back(); } 
 }