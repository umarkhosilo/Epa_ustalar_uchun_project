class RegionModel {
  int? id;
  String? title;
  List<String>? region;

  RegionModel({this.id, this.title, this.region});

  RegionModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    region = json['region'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['region'] = this.region;
    return data;
  }
}