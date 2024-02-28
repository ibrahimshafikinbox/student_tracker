import 'package:flutter/material.dart';
import 'package:graduation_task/Login/Widget/custom_bottom..dart';

class ScanFaceView extends StatefulWidget {
  const ScanFaceView({super.key});

  @override
  State<ScanFaceView> createState() => _ScanFaceViewState();
}

class _ScanFaceViewState extends State<ScanFaceView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071C2E),
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
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
                    "Ibrahim ",
                    style: TextStyle(fontSize: 14.0),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset("assets/Images/mainLogo.png"),
            ],
          ),
          const SizedBox(
            height: 60,
          ),
          Image.asset("assets/Images/iconoir_face-id.png"),
          const SizedBox(
            height: 100,
          ),
          DefaultButton(function: () {}, text: "Register")
        ],
      ),
    );
  }
}
