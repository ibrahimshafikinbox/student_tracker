import 'package:flutter/material.dart';
import 'package:graduation_task/Login/Widget/Custom_Form_Field.dart';
import 'package:graduation_task/Login/Widget/custom_bottom..dart';
import 'package:graduation_task/ScanFAce/ScanFaceView.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  var nationalIdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF071C2E),
      body: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          Image.asset("assets/Images/logo png 1.png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: DefaultFormField(
              controller: nationalIdController,
              type: TextInputType.visiblePassword,
              label: " National Id",
              hint: 'National Id',
              // prefix: Icons.phone,
              onValidate: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'National ID  is required ';
                }
                return null;
              },
              lines: null,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          DefaultButton(
            function: () {
              navigateTo(context, ScanFaceView());
            },
            text: 'Register',
          )
        ],
      ),
    );
  }
}
