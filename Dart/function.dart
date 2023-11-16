main() {
  //welcome(name: 'Ishtiaq Hossen');
  print(welcome2(name: "Ishtiaq Hossen"));
  print(getMyTweets("Ishtiaq", "Abdullah", "Tahmid"));
  //print(getMyTweets2("Ishtiaq", "Abdullah", "Tahmid"));
}

String getMyTweets(String userName, [String? name, String? name2]) {
  var tweet1 = "tweet1 for $userName";
  var tweet2 = "tweet2 for $name";
  var tweet3 = "tweet3 for $name2";

  return tweet1 + "\n" + tweet2 + "\n" + tweet3;
}

String getMyTweets2(String userName,
    [String name = "Unknown1", String name2 = "Unknown2"]) {
  var tweet1 = "tweet1 for $userName";
  var tweet2 = "tweet2 for $name";
  var tweet3 = "tweet3 for $name2";

  return tweet1 + "\n" + tweet2 + "\n" + tweet3;
}

void welcome({required String name}) => print("Hello $name");
String welcome2({required String name}) =>
    "Hello $name";  //arrow will work only if we dont write return here.
