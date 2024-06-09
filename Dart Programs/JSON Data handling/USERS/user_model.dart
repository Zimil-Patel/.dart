class UserModel {
  int id;
  String name, username, email, phone, website;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
  });
}

class Address {
  String street, suite, city, zipcode;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
  });
}

class Geo {
  String lat, lng;

  Geo({
    required this.lat,
    required this.lng,
  });
}

class Company {
  String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});
}
