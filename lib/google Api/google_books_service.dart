import 'dart:convert';
import 'package:http/http.dart' as http;

class GoogleBooksService {
  final String apiKey = 'AIzaSyAFoPjCWj7GKGzYPwb4qN9cTKoAVeeKrIw';  // Replace with your API key

  Future<List<dynamic>> searchBooks(String query) async {
    final url =
        'https://www.googleapis.com/books/v1/volumes?q=$query&key=$apiKey';

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['items'] ?? [];
    } else {
      throw Exception('Failed to load books');
    }
  }
}
