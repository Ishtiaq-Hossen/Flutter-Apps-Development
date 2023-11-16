import 'post.dart';
import 'account.dart';

main() {
  var newPost = Post();
  newPost.newlike = 1;
  newPost.newlike = 1;
  print(newPost.like2);
  var ac = Account();
  if (ac.money != null) {
    print(ac.money.length);
  } else {
    print("its a null");
  }
}
