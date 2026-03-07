// "Do adjacent numbers dekho — agar bada pehle hai, swap karo"
/*
Note: 
arr[i] vs arr[j]   → Door ki cheezein compare karta hai  → Selection Sort
arr[j] vs arr[j+1] → Paas waali cheezein compare karta hai → Bubble Sort 🫧

Real life example 🧑‍🤝‍🧑

Socho ek line mein log khade hain height ke hisaab se sort karna hai

i vs j wala approach:
"Pehle wala banda, saare baakiyon se compare karo" — ek fixed point
j vs j+1 wala approach:
"Paas khade do logon ko compare karo, lamba peeche jaaye" — yahi bubble sort hai! 🫧

*/

void main() {
  List arr = [9, 2, 7, 3, 6, 4, 5];
  bubbleSort(arr);
}

void bubbleSort(List arr) {
  int n = arr.length;

  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (arr[j] > arr[j + 1]) {
        int temp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = temp;
      }
    }
    // print(arr);
  }
  print(arr);
}
