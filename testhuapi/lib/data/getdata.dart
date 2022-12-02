import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Products {
  String? name;
  String? description;
  int? pice;
  String? image;
  Products({
    this.name,
    this.description,
    this.pice,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'pice': pice,
      'image': image,
    };
  }

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      name: map['name'] != null ? map['name'] as String : null,
      description: map['description'] != null ? map['description'] as String : null,
      pice: map['pice'] != null ? map['pice'] as int : null,
      image: map['image'] != null ? map['image'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Products.fromJson(String source) => Products.fromMap(json.decode(source) as Map<String, dynamic>);
}
