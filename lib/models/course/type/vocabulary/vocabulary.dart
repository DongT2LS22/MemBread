class Vocabulary extends Type {
  int? id;
  String? vocabulary;
  String? mean;
  String? description;
  List<Map<String, dynamic>>? options;

  Vocabulary(
      {this.id, this.vocabulary, this.mean, this.description, this.options});

  Vocabulary.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    vocabulary = json['vocabulary'];
    mean = json['mean'];
    description = json['description']??"";
  }

  Map<String,dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['vocabulary'] = vocabulary;
    data['mean'] = mean;
    data['description'] = description;
    return data;
  }
}
