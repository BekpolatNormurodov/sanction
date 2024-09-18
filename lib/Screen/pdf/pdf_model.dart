class PdfModel {
  int? id;
  String? title;
  String? logo;
  String? pdf;
  String? pdf_url;

  PdfModel({this.id, this.title, this.logo, this.pdf});

  PdfModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    logo = json['logo'];
    pdf = json['pdf'];
    pdf_url = json['pdf_url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['logo'] = this.logo;
    data['pdf'] = this.pdf;
    data['pdf_url'] = this.pdf_url;
    return data;
  }
}