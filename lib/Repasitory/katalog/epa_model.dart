class KatalogModel {
  String? title;
  String? img;
  List<Products>? products;

  KatalogModel({this.title, this.img, this.products});

  KatalogModel.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    img = json['img'];
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['img'] = this.img;
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  String? img;
  String? title;
  String? subtitle;
  String? tralling;

  Products({this.img, this.title, this.subtitle, this.tralling});

  Products.fromJson(Map<String, dynamic> json) {
    img = json['img'];
    title = json['title'];
    subtitle = json['subtitle'];
    tralling = json['tralling'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['title'] = this.title;
    data['subtitle'] = this.subtitle;
    data['tralling'] = this.tralling;
    return data;
  }
}