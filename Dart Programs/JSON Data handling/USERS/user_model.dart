class UserModel {
  int id;
  String name, username, email, phone, website;
  Address address;
  Company company;

  UserModel({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    required this.phone,
    required this.website,
    required this.address,
    required this.company,
  });

  factory UserModel.getFromJson(Map map) => UserModel(
        id: map['id'],
        name: map['name'],
        username: map['username'],
        email: map['email'],
        phone: map['phone'],
        website: map['website'],
        address: Address.getFromJson(map['address']),
        company: Company.getFromJson(map['company']),
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

  factory Address.getFromJson(Map map) => Address(
        street: map['street'],
        suite: map['suite'],
        city: map['city'],
        zipcode: map['zipcode'],
        geo: Geo.getFromJson(map['geo']),
      );
}

class Geo {
  String lat, lng;

  Geo({
    required this.lat,
    required this.lng,
  });

  factory Geo.getFromJson(Map map) => Geo(
        lat: map['lat'],
        lng: map['lng'],
      );
}

class Company {
  String name, catchPhrase, bs;

  Company({required this.name, required this.catchPhrase, required this.bs});

  factory Company.getFromJson(Map map) => Company(
        name: map['name'],
        catchPhrase: map['catchPhrase'],
        bs: map['bs'],
      );
}
