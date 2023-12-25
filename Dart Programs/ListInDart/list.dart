void main() {
  var list1 = [10, 20, 30, 40];
  print("before add : $list1");

  list1.add(50); //add (add at last index)
  print("after add : $list1");

  var newList = [];
  newList.addAll(list1); //addAll
  print("NewList with addAll : $newList");

  newList.insert(2, "StaRBoY"); //insert()
  print("NewList with insert: $newList");

  newList.insert(4, list1);
  print("NewList with list1 insert at index 4: $newList");

  newList[4] = "Hello"; //update vlaue at index
  print("NewList with update value at index 4: $newList");

  list1.replaceRange(0, 5, [1, 2, 3, 4, 5]); // repleaceRange();
  print("after repleace list1 : $list1");

  list1.removeLast(); //remove last value
  print("after remove last value list1 : $list1");

  list1.removeAt(1); // remove at particular index
  print("after remove index 1 value list1 : $list1");

  newList.removeRange(0, 3); // remove between range
  print("NewList after removing range value 0 - 3: $newList");

  //Some list operation
  print("Reversed : ${list1.reversed}");
  print("Length : ${list1.length}");
  print("First : ${list1.first}");
  print("Last : ${list1.last}");
  print("Element at 2 : ${list1.elementAt(2)}");
  print("is Empty : ${list1.isEmpty}");
  print("is Not Empty : ${list1.isNotEmpty}");
}
