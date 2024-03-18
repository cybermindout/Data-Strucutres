int binarySearch(List<int> binaryList, int target) {
  int min = 0;
  int max = binaryList.length - 1;

  while (min <= max) {
    int mid = min + ((max - min) ~/ 2);
    if (binaryList[mid] == target) {
      return mid+1;
    } else if (binaryList[mid] < target) {
      min = mid + 1;
    } else {
      max = mid - 1;
    }
  }
  return -1;
}

void main() {
  List<int> list1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int target = 2;

  int aim = binarySearch(list1, target);
  if (aim != -1) {
    print("Target found at the index $aim");
  } else {
    print("Target not found");
  }
}
