class Post {
  var _title = "new Post";
  var _likes = 1000;
  set like(int value) {
    _likes = value;
  }

  set newlike(int value) {
    if (value > 1) {
      print("Its not applicable");
      return;
    }
    _likes = _likes + value;
  }

  int get like => _likes;

  String get like2 {
    var count = _likes / 1000;
    return "${count.toInt()} k";
  }

  void incrementLikes() {
    _likes++;
  }
}
