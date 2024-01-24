class Pokemon {
  final int id;
  final String number;
  final String name;
  final String image;
  final List<String> types;

  Pokemon({
    required this.id,
    required this.number,
    required this.name,
    required this.image,
    required this.types,
  });

  factory Pokemon.fromMap(Map<String, dynamic> json) {
    return Pokemon(
      name: json['name'],
      image: json['img'],
      id: json['id'],
      number: json['num'],
      types: (json['type'] as List).map((e) => e as String).toList(),
    );
  }
}
