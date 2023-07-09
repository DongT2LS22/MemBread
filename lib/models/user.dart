class User {
  String? id;
  String? name;
  String? phone;
  String? email;
  String? address;
  DateTime? birth;

  User({this.id,this.name,this.phone,this.email, this.address, this.birth});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'];
    email = json['email'];
    address = json['address'];
    phone = json['phone'];
    birth = DateTime.parse(json['birth']);
  }

  Map<String,dynamic> toJson(){
    final Map<String,dynamic> data = <String,dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['address'] = address;
    data['phone'] = phone;
    data['birth'] = birth.toString();
    return data;
  }
}