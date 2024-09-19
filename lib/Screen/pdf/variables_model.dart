class VariablesModel {
  String? region;
  String? shak1;
  String? telDate;
  String? telTime;
  String? adress;
  String? fullname;
  String? birthday;
  String? hackType;
  String? apkType;
  String? info;
  String? fromCard;
  String? inCard;
  String? cardFullname;
  String? loseDate;
  String? loseTime;
  String? owner;
  String? loss;

  VariablesModel({
    this.region,
    this.shak1,
    this.telDate,
    this.telTime,
    this.adress,
    this.fullname,
    this.birthday,
    this.hackType,
    this.apkType,
    this.info,
    this.fromCard,
    this.inCard,
    this.cardFullname,
    this.loseDate,
    this.loseTime,
    this.owner,
    this.loss,
  });

  VariablesModel.fromJson(Map<String, dynamic> json) {
    region = json['region'];
    shak1 = json['shak1'];
    telDate = json['telDate'];
    telTime = json['telTime'];
    adress = json['adress'];
    fullname = json['fullname'];
    birthday = json['birthday'];
    hackType = json['hackType'];
    apkType = json['apkType'];
    info = json['info'];
    fromCard = json['fromCard'];
    inCard = json['inCard'];
    cardFullname = json['cardFullname'];
    loseDate = json['loseDate'];
    loseTime = json['loseTime'];
    owner = json['owner'];
    loss = json['loss'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['region'] = this.region;
    data['shak1'] = this.shak1;
    data['telDate'] = this.telDate;
    data['telTime'] = this.telTime;
    data['adress'] = this.adress;
    data['fullname'] = this.fullname;
    data['birthday '] = this.birthday;
    data['hackType'] = this.hackType;
    data['apkType'] = this.apkType;
    data['info'] = this.info;
    data['fromCard'] = this.fromCard;
    data['inCard'] = this.inCard;
    data['cardFullname'] = this.cardFullname;
    data['loseDate'] = this.loseDate;
    data['loseTime'] = this.loseTime;
    data['owner'] = this.owner;
    data['loss'] = this.loss;
    return data;
  }
}
