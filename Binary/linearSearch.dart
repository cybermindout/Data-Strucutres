int linearSearch(List<int> linearList, int target) {
  for (int i = 0; i < linearList.length; i++) {
    if (linearList[i] == target) {
      return i + 1;
    }
  }
  return -1;
}

void main() {
  List<int> list1 = [20,40, 30, 70, 50, 80, 60];
  int target = 10;
  int aim = linearSearch(list1, target);
  if (aim != -1) {
    print("Target found at the index $aim");
  } else {
    print("Target not found");
  }
}
