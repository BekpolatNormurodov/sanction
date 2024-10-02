class DefinedModel {
  int? id;
  String? date;
  String? hackType;
  String? region;
  String? shakl1;
  String? pdf;
  String? pdf_url;

  DefinedModel({this.id, this.date, this.hackType, this.region, this.shakl1, this.pdf});

  DefinedModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    date = json['date'];
    hackType = json['hackType'];
    region = json['region'];
    shakl1 = json['shakl1'];
    pdf = json['pdf'];
    pdf_url = json['pdf_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['date'] = this.date;
    data['hackType'] = this.hackType;
    data['region'] = this.region;
    data['shakl1'] = this.shakl1;
    data['pdf'] = this.pdf;
    data['pdf_url'] = this.pdf_url;
    return data;
  }
}
