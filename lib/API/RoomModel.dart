class RoomModel {
  int? id;
  String? name;
  String? nameRu;

  RoomModel({this.id, this.name, this.nameRu});

  RoomModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    nameRu = json['name_ru'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['name_ru'] = this.nameRu;
    return data;
  }
}
