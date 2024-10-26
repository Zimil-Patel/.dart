import 'dummy_user_json.dart';
import 'dummy_user_model.dart';

void main() {
  List<DummyUserModel> userList =
      dummyUserData.map((e) => DummyUserModel.fromJson(e)).toList();

  for (var userModel in userList) {
    print('-----------------------------');
    print('id: ${userModel.id}');
    print('name: ${userModel.name}');
    print('username: ${userModel.username}');
    print('email: ${userModel.email}');
    print('address:');
    print('\tstreet: ' + '${userModel.address.street}');
    print('\tsuite: ' + '${userModel.address.suite}');
    print('\tcity: ' + '${userModel.address.city}');
    print('\tzipcode: ' + '${userModel.address.zipcode}');
    print('\tgeo:');
    print('\t\tlat: ' + '${userModel.address.geo.lat}');
    print('\t\tlng: ' + '${userModel.address.geo.lng}');
    print('phone: ${userModel.phone}');
    print('website: ${userModel.website}');
    print('company:');
    print('\tname: ' + '${userModel.company.name}');
    print('\tcatchPhrase: ' + '${userModel.company.catchPhrase}');
    print('\tbs: ' + '${userModel.company.bs}');
  }
}
