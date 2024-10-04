class DefinedModel {
  int? id;
  int? starId;
  DefinedModel({this.starId});

  DefinedModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    starId = json['starId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['starId'] = this.starId;
    return data;
  }
}
