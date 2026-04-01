void main() {
  List<int> seq = [1, 3, 6, 10, 15];
  print(nextTerm(seq));
}

int nextTerm(List<int> seq) {
  int lastDiff = seq[seq.length - 1] - seq[seq.length - 2];
  int nextDiff = lastDiff + 1;
  return seq[seq.length - 1] + nextDiff;
}
