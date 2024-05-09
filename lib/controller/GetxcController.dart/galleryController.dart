import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/controller/services/apiServices.dart';
import 'package:newproject/model/model.dart';

class GalleryController extends GetxController {
  final ApiService _apiService = ApiService();
  final RxList<GalleryItem> galleryItems = <GalleryItem>[].obs;

  @override
  void onInit() {
    fetchGalleryItems();
    super.onInit();
  }

  Future<void> fetchGalleryItems() async {
    final response = await _apiService.fetchData();
    if (response != null && response['message'] == 'success') {
      final List<dynamic> items = response['data']['list'];
      galleryItems.assignAll(items.map((item) => GalleryItem.fromJson(item)));
    } else {
      print('Error fetching gallery items');
    }
  }
}
