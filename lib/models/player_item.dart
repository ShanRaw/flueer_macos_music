class PlayerItem {
  final String img;
  final String name;
  final String author;
  final int duration;
  final String url;
  final int id;

  PlayerItem(
      {required this.img,
      required this.name,
      required this.author,
      required this.duration,
      required this.url,
      required this.id});

  Map toJson() {
    return {
      'img': img,
      'name': name,
      'author': author,
      'duration': duration,
      'url': url,
      'id': id,
    };
  }

  factory PlayerItem.fromJson(Map json) {
    return PlayerItem(
        img: json['img'],
        name: json['name'],
        author: json['author'],
        duration: json['duration'],
        url: json['url'],
        id: json['id']);
  }
}
