class StudentModel {
  final int id;
  final String firstName;
  final String lastName;
  String? image;
  String? gender;
  StudentModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      this.gender,
      this.image});
//to create an object from map
  factory StudentModel.fromMap(Map<String, dynamic> map) {
    return StudentModel(
        id: map["id"],
        firstName: map["first_name"],
        lastName: "last_name",
        gender: map["gender"],
        image: map["image"]);
  }
}
