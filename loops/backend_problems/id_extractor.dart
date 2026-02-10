// **Your task:** Extract all the IDs from these strings and count them. Expected output:
// ```
// abc123xyz:2
// def456uvw

void main() {
  var logs = [
    'Apr 10 11:17:35 server1 user=john?shareLinkId=abc123xyz',
    'Apr 10 11:18:40 server2 user=jane?shareLinkId=def456uvw',
    'Apr 10 11:19:45 server3 user=bob?shareLinkId=abc123xyz',
  ];
  List<String> ids = [];
  var idCount = <String, int>{};
  for (int i = 0; i < logs.length; i++) {
    print(logs[i]);
    final regex = RegExp(r'\?shareLinkId=([a-zA-Z0-9_-]+)');
    final match = regex.firstMatch(logs[i]);
    if (match != null) {
      final id = match.group(1);
      ids.add(id!);
      // print(id);
    }
    print(ids);
    // print(logs[i]);
  }
  for (var id in ids) {
    idCount[id] = (idCount[id] ?? 0) + 1;
  }
  print(idCount);
  final sortedIds = idCount.keys.toList()..sort();
  for (final id in sortedIds) {
    var count = idCount[id];
    if (count! > 1) {
      print("$id : $count");
    } else {
      print(id);
    }
  }
  print(idCount['abc123xyz']);
}
