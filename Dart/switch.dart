main() {
  var likes = 800;

  switch (likes) {
    case >= 1000:
      print("very good engagement");
      break;
    case < 1000 && >= 700:
      print("Good engagement");
      break;
    case < 700 && >= 300:
      print("Ok engagement");
      break;
    default:
      print("Bad engagement");
      break;
  }
}
