import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/viewers_bottomsheet/models/viewers_model.dart';import 'package:flutter/material.dart';class ViewersController extends GetxController {TextEditingController stateDefaultSearchController = TextEditingController();

Rx<ViewersModel> viewersModelObj = ViewersModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateDefaultSearchController.dispose(); } 
 }
