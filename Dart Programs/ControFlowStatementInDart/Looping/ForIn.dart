enum Days { monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }

void main() {
  var map1 = {
    '1': 'Monday',
    '2': 'Tuesday',
    '3': "Wednesday",
    '4': 'Thursday',
    '5': 'Friday',
    '6': 'Saturday',
    '7': 'Sunday',
  };

  var list = {
    'monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday'
  };

  for (var d in map1.values) {
    print(d);
  }

  for (var d in Days.values) {
    print(d);
  }

  for (var d in list) {
    print(d);
  }
}
