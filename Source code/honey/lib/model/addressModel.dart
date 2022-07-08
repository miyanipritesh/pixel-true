class AddressModel {
  String? uid;
  String? docid;
  String? address;
  String? city;
  String? state;
  String? zipcode;
  bool? isAgree;
  int? passCode;

  AddressModel(
      {this.uid,
      this.address,
      this.docid,
      this.city,
      this.state,
      this.zipcode,
      this.isAgree,
      this.passCode});

  // receiving data from server
  factory AddressModel.fromMap(map) {
    return AddressModel(
      uid: map['uid'],
      address: map['address'],
      city: map['city'],
      state: map['state'],
      zipcode: map['zipcode'],
      isAgree: map['isAgree'],
      passCode: map['passCode'],
      docid: map['docid'],
    );
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'address': address,
      'city': city,
      'state': state,
      'zipcode': zipcode,
      'isAgree': isAgree,
      'passCode': passCode,
      'docid': docid,
    };
  }
}
