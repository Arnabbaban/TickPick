import 'package:get/get.dart';import 'comments_item_model.dart';class CommentsModel {Rx<List<CommentsItemModel>> commentsItemList = Rx(List.generate(3,(index) => CommentsItemModel()));

 }
