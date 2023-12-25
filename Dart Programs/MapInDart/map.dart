void main() {
  var map1 = {'k1': 'v1', 'k2': 2, 'k3': 3, 'k4': true};

  print(map1['k4']);

  //add new key pair

  map1['k5'] = 5;

  print(map1.values);

  var map2 = Map();

  map2['name'] = "Star";
  map2['Surname'] = "Boii";

  print(map2['Surname']);
}
