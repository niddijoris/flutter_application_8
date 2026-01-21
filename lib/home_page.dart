import 'package:flutter/material.dart';
import 'package:flutter_application_8/about_page.dart';
import 'package:flutter_application_8/controllers/models/student_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List list = [
    StudentModel(
      name: "John",
      number: "+998912314567",
      group: "612-34",
      course: 2,
      status: "Bachelor",
    ),
    StudentModel(
      name: "Robert",
      number: "+998912984567",
      group: "610-17",
      course: 1,
      status: "Bachelor",
    ),
    StudentModel(
      name: "Ralph",
      number: "+998882314567",
      group: "612-34",
      course: 2,
      status: "Master",
    ),
    StudentModel(
      name: "Lopez",
      number: "+998912314567",
      group: "612-20",
      course: 4,
      status: "Bachelor",
    ),
    StudentModel(
      name: "Yamal",
      number: "+998912309567",
      group: "612-44",
      course: 3,
      status: "Bachelor",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tojmamatov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
    StudentModel(
      name: "Tohirov",
      number: "+998912317667",
      group: "630-11",
      course: 1,
      status: "Master",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Talabalar ro'yhati")),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            margin: EdgeInsets.symmetric(vertical: 6, horizontal: 8),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: CircleAvatar(child: Icon(Icons.person)),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        list[index].name,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                        ),
                      ),
                      Text(list[index].number),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        child: CircleAvatar(
                          radius: 15,
                          child: Text(list[index].course.toString()),
                        ),
                      ),
                      Container(child: Text(list[index].getStatus())),
                    ],
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return AboutPage(studentModel: (list[index]));
                          },
                        ),
                      );
                    },
                    icon: Icon(Icons.arrow_circle_right_outlined, size: 30),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
