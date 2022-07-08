class UserModel {
  String? uid;
  String? name;
  String? email;
  String? password;
  String? Comform_password;
  String? phone;

  UserModel({
    this.uid,
    this.name,
    this.email,
    this.password,
    this.Comform_password,
    this.phone,
  });

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
      uid: map['uid'],
      name: map['name'],
      email: map['email'],
      password: map['password'],
      Comform_password: map['Comform_password'],
      phone: map['phone'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'name': name,
      'email': email,
      'password': password,
      'Comform_password': Comform_password,
      'phone': phone
    };
  }
}
