import 'book_model.dart';
import 'json_data.dart';

void main() {
  BookModel bookModel;
  for (int i = 0; i < json_list_book.length; i++) {
    bookModel = BookModel.getFromJson(json_list_book[i]);

    print('-----------------------------');
    print('title: ${bookModel.title}');
    print('author: ${bookModel.author}');
    print('publication_year: ${bookModel.publication_year}');
    print('genres: ${bookModel.genres}');
    print('available: ${bookModel.available}');
  }
}
