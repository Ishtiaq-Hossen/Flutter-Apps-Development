/*
enum are classes
*/
enum SocialMedia { facebook, whatsapp, youtube }

main() {
  SocialMedia s = SocialMedia.facebook;
  print(s.index);
  switch (s) {
    case SocialMedia.facebook:
      print("Blue");
      break;
    case SocialMedia.whatsapp:
      print('Green');
      break;
    case SocialMedia.youtube:
      print("Red");
      break;
    default:
      print("Unknown");
  }
}
