import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/type_comments_bottomsheet/models/type_comments_model.dart';import 'package:flutter/material.dart';class TypeCommentsController extends GetxController {TextEditingController statusActiveTypeNormalController = TextEditingController();

Rx<TypeCommentsModel> typeCommentsModelObj = TypeCommentsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusActiveTypeNormalController.dispose(); } 
 }
