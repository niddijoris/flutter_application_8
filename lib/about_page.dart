import 'package:flutter/material.dart';
import 'package:flutter_application_8/controllers/models/student_model.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key, required this.studentModel});
  final StudentModel studentModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Talaba haqida")),
      body: Center(
        child: Container(
          width: 250,
          decoration: BoxDecoration(color: Colors.blueGrey.withAlpha(10)),

          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.grey.withAlpha(25),
                ),
                child: Icon(Icons.person, size: 40),
              ),
              Text(
                "${studentModel.name}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Text("${studentModel.number}"),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Guruhi: "), Text(studentModel.group)],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Kursi: "),
                        Text(studentModel.course.toString()),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Darajasi: "), Text(studentModel.status)],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
