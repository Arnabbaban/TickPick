import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/sign_up_blank_form_screen/models/sign_up_blank_form_model.dart';import 'package:flutter/material.dart';class SignUpBlankFormController extends GetxController {TextEditingController statusDefaultController = TextEditingController();

TextEditingController statusDefaultOneController = TextEditingController();

Rx<SignUpBlankFormModel> signUpBlankFormModelObj = SignUpBlankFormModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isCheckbox = false.obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); statusDefaultController.dispose(); statusDefaultOneController.dispose(); } 
 }
