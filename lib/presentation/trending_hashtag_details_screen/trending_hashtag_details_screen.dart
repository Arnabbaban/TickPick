import '../trending_hashtag_details_screen/widgets/gridplay2_item_widget.dart';import 'controller/trending_hashtag_details_controller.dart';import 'models/gridplay2_item_model.dart';import 'package:flutter/material.dart';import 'package:tickpick/core/app_export.dart';import 'package:tickpick/widgets/app_bar/appbar_image.dart';import 'package:tickpick/widgets/app_bar/appbar_title.dart';import 'package:tickpick/widgets/app_bar/custom_app_bar.dart';import 'package:tickpick/widgets/custom_button.dart';class TrendingHashtagDetailsScreen extends GetWidget<TrendingHashtagDetailsController> {@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.whiteA700, appBar: CustomAppBar(height: getVerticalSize(51), leadingWidth: 52, leading: AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgArrowleft, margin: getMargin(left: 24, top: 10, bottom: 13), onTap: () {onTapArrowleft16();}), title: AppbarTitle(text: "msg_trending_hashta".tr, margin: getMargin(left: 16)), actions: [AppbarImage(height: getSize(28), width: getSize(28), svgPath: ImageConstant.imgReply28x28, margin: getMargin(left: 24, top: 10, right: 24, bottom: 13))]), body: Container(width: double.maxFinite, padding: getPadding(left: 24, top: 10, right: 24, bottom: 10), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Padding(padding: getPadding(right: 62), child: Row(children: [Card(clipBehavior: Clip.antiAlias, elevation: 0, margin: EdgeInsets.all(0), color: ColorConstant.deepOrange50, shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder56), child: Container(height: getSize(112), width: getSize(112), padding: getPadding(all: 32), decoration: AppDecoration.fillDeeporange50.copyWith(borderRadius: BorderRadiusStyle.circleBorder56), child: Stack(children: [CustomImageView(svgPath: ImageConstant.imgAirplane, height: getSize(48), width: getSize(48), alignment: Alignment.center)]))), Padding(padding: getPadding(left: 22, top: 2), child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [Text("lbl_amazingfood".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanBold24), Padding(padding: getPadding(top: 10), child: Text("lbl_827_5m_videos".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtUrbanistRomanMedium14Gray700.copyWith(letterSpacing: getHorizontalSize(0.2)))), CustomButton(height: getVerticalSize(38), width: getHorizontalSize(184), text: "msg_add_to_favorite".tr, margin: getMargin(top: 13), variant: ButtonVariant.OutlineDeeporangeA40001, padding: ButtonPadding.PaddingT11, fontStyle: ButtonFontStyle.UrbanistRomanBold14DeeporangeA40001, prefixWidget: Container(margin: getMargin(right: 2), child: CustomImageView(svgPath: ImageConstant.imgBookmark16x16)))]))])), Padding(padding: getPadding(top: 24), child: Divider(height: getVerticalSize(1), thickness: getVerticalSize(1), color: ColorConstant.gray200)), Padding(padding: getPadding(top: 23), child: Obx(() => GridView.builder(shrinkWrap: true, gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(mainAxisExtent: getVerticalSize(201), crossAxisCount: 3, mainAxisSpacing: getHorizontalSize(8), crossAxisSpacing: getHorizontalSize(8)), physics: NeverScrollableScrollPhysics(), itemCount: controller.trendingHashtagDetailsModelObj.value.gridplay2ItemList.value.length, itemBuilder: (context, index) {Gridplay2ItemModel model = controller.trendingHashtagDetailsModelObj.value.gridplay2ItemList.value[index]; return Gridplay2ItemWidget(model);})))])))); } 
onTapArrowleft16() { Get.back(); } 
 }
