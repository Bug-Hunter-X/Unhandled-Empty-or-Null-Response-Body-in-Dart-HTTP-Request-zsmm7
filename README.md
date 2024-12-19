# Unhandled Empty or Null Response Body in Dart HTTP Request

This repository demonstrates a common error in Dart when making HTTP requests: not handling empty or null response bodies. The `bug.dart` file contains the erroneous code, while `bugSolution.dart` provides a corrected version.

The bug arises because the code assumes the API response always contains valid JSON data. If the API returns an empty body or a non-JSON response, the `jsonDecode` function will throw an exception, causing the app to crash or behave unpredictably. The solution addresses this by adding checks to handle these edge cases gracefully. 