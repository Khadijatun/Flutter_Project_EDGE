void main() {

  List<Map<String, dynamic>> students = [
    {"name": "Alice", "scores": [85, 90, 78]},
    {"name": "Bob", "scores": [88, 76, 95]},
    {"name": "Charlie", "scores": [90, 92, 85]},
  ];

  Map<String, double> result = {};


  for (var student in students) {
    String name = student['name'];
    List<int> scores = List<int>.from(student['scores']);
    double sum = 0;

    for (var score in scores) {
      sum += score;
    }

    double average = sum / scores.length;
    result[name] = double.parse(average.toStringAsFixed(2));
  }


  var sortedResult = result.entries.toList()
    ..sort((a, b) => b.value.compareTo(a.value));


  for (var entry in sortedResult) {
    print('"${entry.key}": ${entry.value}');
  }
}