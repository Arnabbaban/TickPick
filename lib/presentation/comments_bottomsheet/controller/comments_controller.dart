import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/comments_bottomsheet/models/comments_model.dart';import 'package:flutter/material.dart';class CommentsController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

Rx<CommentsModel> commentsModelObj = CommentsModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); } 
 }
