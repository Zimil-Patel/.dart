import 'users_json.dart';
import 'users_model.dart';

void main() {
  UsersModel usersModel = UsersModel.fromJson(userData);

  print("--------------- User Data ---------------");
  print("total: ${usersModel.total}");
  print("skip: ${usersModel.skip}");
  print("limit: ${usersModel.limit}");
  for (var user in usersModel.userList) {
    print("------------------------------");
    print("id: ${user.id}");
    print("firstName: ${user.firstName}");
    print("lastName: ${user.lastName}");
    print("maidenName: ${user.maidenName}");
    print("age: ${user.age}");
    print("gender: ${user.gender}");
    print("email: ${user.email}");
    print("username: ${user.username}");
    print("password: ${user.phone}");
    print("birthDate: ${user.birthDate}");
    print("image: ${user.image}");
    print("bloodGroup: ${user.bloodGroup}");
    print("height: ${user.height}");
    print("weight: ${user.weight}");
    print("eyeColor: ${user.eyeColor}");
    print("hair : { color: ${user.hair.color}, type: ${user.hair.type}}");
    print("ip : ${user.ip}");
    print(
        "address : {address: ${user.address.address}, city: ${user.address.city}, state: ${user.address.state}, stateCode: ${user.address.stateCode}, postalCode: ${user.address.postalCode}, coordinated: {lat: ${user.address.coordinates.lat}, lng: ${user.address.coordinates.lng}}, country: ${user.address.country}}");
    print("macAddress : ${user.macAddress}");
    print("university : ${user.university}");
    print(
        "bank : {cardExpire: ${user.bank.cardExpire}, cardNumber: ${user.bank.cardNumber}, cardType: ${user.bank.cardType}, currency: ${user.bank.currency}, iban: ${user.bank.iban}, }");
    print(
        "company: {department: ${user.company.department}, name: ${user.company.name}, title: ${user.company.title}, address : {address: ${user.company.address.address}, city: ${user.company.address.city}, state: ${user.company.address.state}, stateCode: ${user.company.address.stateCode}, postalCode: ${user.company.address.postalCode}, coordinated: {lat: ${user.company.address.coordinates.lat}, lng: ${user.company.address.coordinates.lng}}, country: ${user.company.address.country}}}");
    print("ein: ${user.ein}");
    print("ssn: ${user.ssn}");
    print("userAgent: ${user.userAgent}");
    print(
        "crypto: {coin: ${user.crypto.coin}, wallet: ${user.crypto.wallet}, network: ${user.crypto.network}}");
    print("role: ${user.role}");
  }
}
