### JSON and JSON Parsing in Dart

**JSON (JavaScript Object Notation)** is a lightweight data-interchange format that's easy for humans to read and write, and easy for machines to parse and generate. In Dart, you can use the `dart:convert` library to handle JSON data, converting between Dart objects and JSON strings.

**Parsing JSON in Dart** involves decoding a JSON string into a Dart map or list and then using the data as needed. You can create models to represent the structure of your JSON data and use factory constructors to convert the JSON data into these models.

### Example: JSON List Parsing

Here's a simplified example of how to parse a list of books from JSON data in Dart.

**Step 1: Create a JSON List**

```dart
List<Map<String, dynamic>> jsonListBook = [
  {
    "title": "To Kill a Mockingbird",
    "author": "Harper Lee",
    "publication_year": 1960,
    "genres": ["Fiction", "Classic", "Historical"],
    "available": true
  },
  // Add more books as needed
];
```

**Step 2: Define a BookModel Class**

```dart
class BookModel {
  String title;
  String author;
  int publicationYear;
  bool available;
  List<String> genres;

  BookModel({
    required this.title,
    required this.author,
    required this.publicationYear,
    required this.genres,
    required this.available,
  });

  factory BookModel.fromJson(Map<String, dynamic> json) {
    return BookModel(
      title: json['title'],
      author: json['author'],
      publicationYear: json['publication_year'],
      genres: List<String>.from(json['genres']),
      available: json['available'],
    );
  }
}
```

**Step 3: Parse the JSON List**

```dart
void main() {
  for (var bookJson in jsonListBook) {
    BookModel book = BookModel.fromJson(bookJson);
    
    print('-----------------------------');
    print('Title: ${book.title}');
    print('Author: ${book.author}');
    print('Publication Year: ${book.publicationYear}');
    print('Genres: ${book.genres.join(', ')}');
    print('Available: ${book.available}');
  }
}
```

This example demonstrates how to read JSON data, parse it into Dart objects, and use the data in your application.
```

For more detailed information, visit the [GitHub repository](https://github.com/Zimil-Patel/Dart_Project/tree/main/Dart%20Programs/JSON%20Data%20handling/BOOKS).
