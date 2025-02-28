class idmodel {
  String? name;
  String? avatar;
  String? email;
  String? id;
  String? description;
  String? maritalStatus;
  String? course;

  idmodel({
    this.name,
    this.avatar,
    this.email,
    this.id,
    this.description,
    this.maritalStatus,
    this.course,
  });

  idmodel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    avatar = json['avatar'];
    email = json['email'];
    id = json['id'];
    description = json['description'];
    maritalStatus = json['marital_status'];
    course = json['course'];
  }
}
