import 'package:flutter/material.dart';
import 'package:kas/models/post_model.dart';
import 'package:kas/services/api_service.dart';

class PostProvider extends ChangeNotifier {
  List<PostModel> posts = [];
  bool isLoading = false;
  String? errorMessage;

  Future<void> getListPost() async {
    isLoading = true;
    errorMessage = null;
    notifyListeners();

    try {
      posts = await ApiService.getListPosts();
    } catch (error) {
      errorMessage = error.toString();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}