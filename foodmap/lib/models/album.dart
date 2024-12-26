class Album {
  int? userId;
  int? id;
  String? title;

  Album({this.userId, this.id, this.title});

  // 일반생성자 방식
  // Album.fromJson(Map<String, dynamic> json) {
  //   userId = json["userId"];
  //   id = json["id"];
  //   title = json["title"];
  // }

  // 팩토리 생성자 방식 (return 명시)
  factory Album.fromJson(Map<String, dynamic> json) =>
      Album(userId: json["userId"], id: json["id"], title: json["title"]);
}
