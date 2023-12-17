import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/sign_in_blank_form_screen/models/sign_in_blank_form_model.dart';import 'package:flutter/material.dart';class SignInBlankFormController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

Rx<SignInBlankFormModel> signInBlankFormModelObj = SignInBlankFormModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isCheckbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); statusDefaultOneController.dispose(); } 
 }
