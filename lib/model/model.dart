class GalleryItem {
  final String id;
  final String name;
  final String uid;
  final int docType;
  final String url;

  GalleryItem({
    required this.id,
    required this.name,
    required this.uid,
    required this.docType,
    required this.url,
  });

  factory GalleryItem.fromJson(Map<String, dynamic> json) {
    return GalleryItem(
      id: json['_id'],
      name: json['_name'],
      uid: json['_uid'],
      docType: json['_docType'],
      url: json['_url'],
    );
  }
}

class GalleryResponse {
  final String message;
  final Map<String, dynamic> data;

  GalleryResponse({required this.message, required this.data});

  factory GalleryResponse.fromJson(Map<String, dynamic> json) {
    return GalleryResponse(
      message: json['message'],
      data: json['data'],
    );
  }
}
