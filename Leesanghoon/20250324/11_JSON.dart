import 'dart:convert';

main() {
  var jsonString = '''
  [
    {
      "score":40
    },
    {
      "score":80
    }
  ]
''';

  var scores = jsonDecode(jsonString);
  print(scores);

  var firstScore = scores[0];
  print(firstScore);
  print(firstScore['score']);

  print(scores[0]['score']);
}