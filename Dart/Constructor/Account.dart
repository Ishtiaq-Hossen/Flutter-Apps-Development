class Account {
  //var name = "";
  // var lastName = "";
  final String name;
  final String lastName;
  //Account() {}   //cant make default constructor because final needs to initialized at first
  Account({required this.name, required this.lastName});
  Account.defaultAccount() : this.johnAccount(); //constructor forwarding
  Account.johnAccount() : this(name: "Ishtiaq", lastName: "Hossen");
}
