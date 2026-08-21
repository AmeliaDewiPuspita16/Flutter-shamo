class CategoryModel {
  int id;
  String name;

  CategoryModel ({
    required this.id,
    required this.name,
  });

  CategoryModel.fromJson(Map<String, dynamic> json)
    : id = json['id'],
      name = json['name'];

  // /CONTRUCTOR UNTUK MENGUBAH CATEGORYMODEL INI KE BENTUK JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
    };
  }
}