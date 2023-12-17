import 'package:tickpick/core/app_export.dart';import 'package:tickpick/presentation/report_screen/models/report_model.dart';class ReportController extends GetxController {Rx<ReportModel> reportModelObj = ReportModel().obs;

Rx<String> radioGroup = "".obs;

@override void onReady() { super.onReady(); } 
@override void onClose() { super.onClose(); } 
 }
