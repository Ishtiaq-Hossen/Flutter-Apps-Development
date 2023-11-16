class Post {
  var title = "New Post";
  var likes = 0;
  void incrementLikes() {
    likes++;
  }
}

main(){
  
  String text = 'Hello';
  var newPost = Post();
  newPost.title = "Change Title";
  newPost.likes = 1;
  newPost.incrementLikes();
  newPost.incrementLikes();
  newPost.incrementLikes();
  print(newPost.likes);

  var post2 = newPost; //post2 have the ref of newPost
  print(newPost.title);
  post2.title = "post 2 title";
  print(newPost.title);
}
