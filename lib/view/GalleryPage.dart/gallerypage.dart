// gallery_page.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newproject/controller/GetxcController.dart/galleryController.dart';

class GalleryPage extends StatelessWidget {
  final GalleryController galleryController = Get.put(GalleryController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gallery')),
      body: Obx(
        () => buildGalleryList(),
      ),
    );
  }

  Widget buildGalleryList() {
    return ListView.builder(
      itemCount: galleryController.galleryItems.length,
      itemBuilder: (context, index) {
        final item = galleryController.galleryItems[index];
        return ListTile(
          title: Text(item.name),
          subtitle: Text(item.url),
        );
      },
    );
  }
}
