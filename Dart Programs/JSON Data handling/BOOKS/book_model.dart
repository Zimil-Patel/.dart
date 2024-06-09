class BookModel {
  String title, author;
  int publication_year;
  bool available;
  List<String> genres;

  BookModel({
    required this.title,
    required this.author,
    required this.publication_year,
    required this.genres,
    required this.available,
  });

  factory BookModel.getFromJson(Map map) => BookModel(
        title: map['title'],
        author: map['author'],
        publication_year: map['publication_year'],
        genres: map['genres'],
        available: map['available'],
      );
}
