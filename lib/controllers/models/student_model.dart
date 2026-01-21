class StudentModel {
  String name;
  String number;
  String group;
  int course;
  String status;

  StudentModel({
    required this.name,
    required this.number,
    required this.group,
    required this.course,
    required this.status,
  });
  String getStatus() {
    if (status == "Bachelor") {
      return "BC";
    }
    return "MS";
  }
}
