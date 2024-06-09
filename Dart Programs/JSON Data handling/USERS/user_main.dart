import 'json_data.dart';
import 'user_model.dart';

void main() {
  UserModel userModel;
  for (int i = 0; i < json_list_users.length; i++) {
    userModel = UserModel.getFromJson(json_list_users[i]);

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
