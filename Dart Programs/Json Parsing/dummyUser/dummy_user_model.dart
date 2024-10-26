class DummyUserModel {
  int id;
  String name;
  String username;
  String email;
  Address address;
  String phone;
  String website;
  Company company;

  DummyUserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.address,
    required this.phone,
    required this.website,
    required this.company,
  });

  factory DummyUserModel.fromJson(Map map) => DummyUserModel(
        id: map['id'],
        name: map['name'],
        username: map['username'],
        email: map['email'],
        address: Address.fromJson(map['address']),
        phone: map['phone'],
        website: map['website'],
        company: Company.fromJson(map['company']),
      );
}

class Address {
  String street, suite, city, zipcode;
  Geo geo;

  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geo,
  });

  factory Address.fromJson(Map map) => Address(
        street: map['street'],
        suite: map['suite'],
        city: map['city'],
        zipcode: map['zipcode'],
        geo: Geo.fromJson(map['geo']),
      );
}

class Geo {
  String lat, lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.fromJson(Map map) => Geo(
        lat: map['lat'],
        lng: map['lng'],
      );
}

class Company {
  String name, catchPhrase, bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map map) => Company(
        name: map['name'],
        catchPhrase: map['catchPhrase'],
        bs: map['bs'],
      );
}
