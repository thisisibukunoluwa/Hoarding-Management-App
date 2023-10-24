class PersonalInfo {
  String firstName;
  String lastName;
  String email;
  String country;
  String state;
  String localGovernmentArea;
  String password;
  String confirmPassword;

  PersonalInfo({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.country,
    required this.state,
    required this.localGovernmentArea,
    required this.password,
    required this.confirmPassword,
  });

  factory PersonalInfo.fromJson(Map<String, dynamic> json) {
    return PersonalInfo(
      firstName: json['first_name'],
      lastName: json['last_name'],
      email: json['email'],
      country: json['country'],
      state: json['state'],
      localGovernmentArea: json['lga'],
      password: json['password'],
      confirmPassword: json['confirm_password'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'country': country,
      'state': state,
      'lga': localGovernmentArea,
      'password': password,
      'confirm_password': confirmPassword,
    };
  }
}



