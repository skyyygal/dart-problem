//
// void main() {
// var json = {'id': 1, "name": "Anita", "email": "anita@gmail.com"};
//
// var user = jsonEncode(json);
// print('JSON String: $user');
// Output: {"id":1,"name":"Anita","email":"anita@gmail.com"}
//
// Step 3: Convert back to Dart Map
// var user1 = jsonDecode(user);
// print('Dart Map: $user1');
// Output: {id: 1, name: Anita, email: anita@gmail.com}
//
// Step 4: Access data
// print(user1['name']); // Anita
// print(user1['email']); // anita@gmail.com
// }
//

var json = {
  "user": {
    "name": "John",
    "address": {"city": "New York", "zip": "10001"},
  },
};
String jsonString = '''
  {
    "user": {
      "name": "John",
      "address": {"city": "New York", "zip": "10001"}
    }
  }
  ''';

void main() {
  print('user: ${json["user"]}');
  print('address: ${json["user"]!["address"]}');
  print('city: ${json["user"]!["address"]}');
}
