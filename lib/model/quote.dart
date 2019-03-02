class Quote {
  final String id;
  final String title;
  final String content;

  Quote({this.id, this.title, this.content});

  factory Quote.fromJson(Map<String, dynamic> json) {
    return new Quote(
      id: json['ID'].toString(),
      title: json['title'],
      content: json['content'],
    );
  }
}