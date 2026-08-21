class GalleryModel {
  
  int id;
  String url;

  GalleryModel ({
    required this.id,
    required this.url,
  });

  GalleryModel.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      url = json['url'];

  // /CONTRUCTOR UNTUK MENGUBAH GALLERYMODEL INI KE BENTUK JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
    };
  }



}