```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Here's where the bug is, we're not handling the case
      // where the response body is empty or null.
      final jsonData = jsonDecode(response.body);
      // ... process jsonData ...
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // ... handle error ...
    print('Error: $e');
  }
}
```