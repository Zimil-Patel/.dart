List leftRotate(List list, int rotations) {
  print(list.sublist(rotations));
  print(list.sublist(0, rotations));
  return list.sublist(rotations)..addAll(list.sublist(0, rotations));
}

List rightRotate(List list, int rotations) {
  print(list.sublist(rotations));
  print(list.sublist(0, rotations));
  return list.sublist(list.length - rotations)
    ..addAll(list.sublist(0, list.length - rotations));
}

void main() {
  List originalList = [1, 2, 3, 4, 5];

  // Left rotate by 2
  List leftRotatedList = leftRotate(originalList, 2);
  print("Left Rotated List: $leftRotatedList");

  // Right rotate by 2
  List rightRotatedList = rightRotate(originalList, 3);
  print("Right Rotated List: $rightRotatedList");
}
