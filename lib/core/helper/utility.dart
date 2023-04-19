import 'dart:convert';

dynamic parseJson(String json) {
  final parsed = jsonDecode(json);

  return parsed;
}
