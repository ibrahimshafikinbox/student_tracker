import 'package:flutter/material.dart';
import 'package:graduation_task/Login/Widget/custom_bottom..dart';
import 'package:graduation_task/coursers/Widegt/my_row_widget.dart';

import 'course_and_doc_name.dart';

class CoursesView extends StatefulWidget {
  const CoursesView({super.key});

  @override
  State<CoursesView> createState() => _CoursesViewState();
}

class _CoursesViewState extends State<CoursesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071C2E),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage(
                      'assets/Images/dec890b0-79ae-11ed-bf69-f4bc15d1bbaf.jpeg'),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  children: const [
                    Text(
                      "Welcome ",
                      style: TextStyle(fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "user  ",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ],
                ),
                const Spacer(),
                Image.asset("assets/Images/mainLogo.png"),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(12.0),
          //   child: Container(
          //     height: 60,
          //     decoration: BoxDecoration(
          //         color: const Color.fromARGB(255, 1, 10, 18),
          //         borderRadius: BorderRadius.circular(12)),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.center,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: const [
          //         Text("locate"),
          //         SizedBox(
          //           width: 60,
          //         ),
          //         Text("Today"),
          //         SizedBox(
          //           width: 60,
          //         ),
          //         Text("History "),
          //       ],
          //     ),
          //   ),
          // ),

          const MyWidget(),

          ListView.builder(
              shrinkWrap: true,
              itemCount: 25,
              itemBuilder: (BuildContext context, index) {
                return GestureDetector(
                  onTap: () {
                    navigateTo(context, CoursesAndDocName());
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 60,
                      child: Center(
                          child: Text(
                        "all courses name   ",
                        style: TextStyle(fontSize: 20),
                      )),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                  ),
                );
              })
        ],
      ),
    );
  }
}
