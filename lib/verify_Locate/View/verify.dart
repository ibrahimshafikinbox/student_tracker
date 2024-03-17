import 'dart:io';

import 'package:flutter/material.dart';
import 'package:graduation_task/Login/Widget/custom_bottom..dart';
import 'package:graduation_task/ScanFAce/confirm_Scan_face_view.dart';
import 'package:graduation_task/coursers/courses_View.dart';
import 'package:image_picker/image_picker.dart';

class VerifyView extends StatefulWidget {
  const VerifyView({super.key});

  @override
  State<VerifyView> createState() => _VerifyViewState();
}

class _VerifyViewState extends State<VerifyView> {
  File? _pickedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071C2E),
      body: ListView(
        children: [
          const SizedBox(
            height: 25,
          ),
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
          const SizedBox(
            height: 25,
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 1, 10, 18),
                borderRadius: BorderRadius.circular(12)),
            height: 60,
            child: Container(
                width: MediaQuery.of(context).size.width / 1.5,
                child: Expanded(
                  child: DefaultButton(
                      function: () {}, text: "Confirm attendance"),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 1, 10, 18),
                  borderRadius: BorderRadius.circular(12)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text("Course Name : "),
                        Spacer(),
                        Text("oop"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text("Doctor Name : "),
                        Spacer(),
                        Text("Ali Eldesouky"),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Text("Place : "),
                        Spacer(),
                        Text("runway c"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Image.asset("assets/Images/iconoir_face-id.png"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text("Scan Your Face ", style: TextStyle(fontSize: 18)),
            ],
          ),
          const SizedBox(
            height: 100,
          ),
          DefaultButton(
              function: () {
                _pickImage();
              },
              text: "Confirm attendance"),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera);

    if (pickedImage != null) {
      setState(() {
        _pickedImage = File(pickedImage.path);
      });
      navigateTo(context, CoursesView());
    }
  }
}
