import 'package:flutter/material.dart';

class ConfirmBox extends StatefulWidget {
  final String text;
  const ConfirmBox({
    Key? key,
    required this.text,
  }) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ConfirmBoxState createState() => _ConfirmBoxState();
}

class _ConfirmBoxState extends State<ConfirmBox> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          child: Checkbox(
            activeColor: Colors.redAccent,
            value: rememberMe,
            onChanged: (value) {
              setState(() {
                rememberMe = value!;
              });
            },
          ),
        ),
        Text(
          widget.text,
          style: const TextStyle(fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
