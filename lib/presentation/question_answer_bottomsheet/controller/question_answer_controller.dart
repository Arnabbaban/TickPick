import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/question_answer_bottomsheet/models/question_answer_model.dart';import 'package:flutter/material.dart';class QuestionAnswerController extends GetxController {TextEditingController frameOneController = TextEditingController();

Rx<QuestionAnswerModel> questionAnswerModelObj = QuestionAnswerModel().obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); frameOneController.dispose(); } 
 }
