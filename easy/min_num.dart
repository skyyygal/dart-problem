void main() {
  List nums = [3, 5, 4, 1, 9];
  minNum(nums);
  MinMax(nums);
  minMaxSort(nums);
}

void minNum(List nums) {
  int min = nums[0];

  for (int i = 1; i < nums.length; i++) {
    if (min > nums[i]) {
      min = nums[i];
    }
  }
  print(min);
}

void MinMax(List nums) {
  int min = nums[0];
  int max = nums[0];
  for (int i = 1; i < nums.length; i++) {
    if (max < nums[i]) {
      max = nums[i];
    }
    if (min > nums[i]) {
      min = nums[i];
    }
  }
  print(max);
  print(min);
}

void minMaxSort(arr) {
  arr.sort();
  int n = arr.length;
  int max = arr[n - 1];
  int min = arr[0];

  print("Max: $max and Min: $min");
}
