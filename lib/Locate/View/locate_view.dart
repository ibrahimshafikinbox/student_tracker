import 'package:flutter/material.dart';
import 'package:graduation_task/Login/Widget/custom_bottom..dart';
import 'package:graduation_task/verify_Locate/View/verify.dart';

class LocateView extends StatefulWidget {
  const LocateView({super.key});

  @override
  State<LocateView> createState() => _LocateViewState();
}

class _LocateViewState extends State<LocateView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071C2E),
      body: Column(
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
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              height: 40,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 1, 10, 18),
                  borderRadius: BorderRadius.circular(12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text("locate"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("Today"),
                  SizedBox(
                    width: 15,
                  ),
                  Text("History "),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 25,
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
          Spacer(),
          DefaultButton(
              function: () {
                navigateTo(context, const VerifyView());
              },
              text: "Confirm attendance"),
          SizedBox(
            height: 100,
          )
        ],
      ),
    );
  }
}

//   File? AdImage;
//   Future<void> getAdImage(source) async {
//     final pickedFile = await ImagePicker().pickImage(source: source);
//      if (pickedFile != null) {
//       AdImage = File(pickedFile.path);
//     } else {
//      }
//   }