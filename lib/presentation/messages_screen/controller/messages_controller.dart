import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/messages_screen/models/messages_model.dart';import 'package:flutter/material.dart';class MessagesController extends GetxController {TextEditingController stateDefaultSearchController = TextEditingController();

Rx<MessagesModel> messagesModelObj = MessagesModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); stateDefaultSearchController.dispose(); } 
 }
