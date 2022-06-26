class KurdishCities {
  final int id;
  final String name;
  final String description;
  String? image;

  KurdishCities({
    required this.id,
    required this.name,
    required this.description,
    this.image,
  });
  factory KurdishCities.fromMap(Map<String, dynamic> map) {
    return KurdishCities(
      id: map["id"],
      name: map["name"],
      description: map["description"],
      image: map["image"],
    );
  }
  // List<StudentModel> student = students.map(
  //                   (e) {
  //                     return StudentModel.fromMap(e);
  //                   },
  //                 ).toList();
}
