class Person {
  final String name;
  final int age;
  final String genre;

  Person({
    required this.name,
    required this.age,
    required this.genre,
  });

  @override
  String toString() {
    return '$name, $age anos, $genre';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is Person && other.name == name;
  }

  @override
  int get hashCode => name.hashCode;
}