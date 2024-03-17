import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:graduation_task/Login/Widget/custom_bottom..dart';
import 'package:graduation_task/verify_Locate/View/verify.dart';

class ConfirmScanView extends StatefulWidget {
  const ConfirmScanView({super.key});

  @override
  State<ConfirmScanView> createState() => _ConfirmScanViewState();
}

class _ConfirmScanViewState extends State<ConfirmScanView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071C2E),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
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
                      " userName ",
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
            height: 60,
          ),
          GestureDetector(
              onTap: () {
                navigateTo(context, VerifyView());
              },
              child: Image.asset("assets/Images/iconoir_face-id.png")),
          // const SizedBox(
          //   height: 100,
          // ),
          // DefaultButton(function: () {}, text: "Register")
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(15)),
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                    child: Image.asset(
                  "assets/Images/Approval (1).png",
                  height: 70,
                  width: 70,
                )),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "You have been successfully registered in our academic system, and we would like to confirm that the phone number we have on file is [number here]. Please note that the phone number can only be changed through technical support, and the registrar must be present on campus to make any phone changes. If you have any questions or problems, please do not hesitate to contact our technical support team for assistance.",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
