// ignore_for_file: file_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType type;
  final Function? onSubmit;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? onValidate;
  final VoidCallback? suffixPressed;
  final String label;
  final lines;

  final String hint;
  // final IconData prefix;
  final bool isPassword;
  final IconData? suffix;

  const DefaultFormField({
    Key? key,
    required this.controller,
    required this.type,
    this.onSubmit,
    this.onChanged,
    this.onTap,
    required this.onValidate,
    this.suffixPressed,
    required this.label,
    required this.lines,
    required this.hint,
    this.isPassword = false,
    this.suffix,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: lines,
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChanged,
      onTap: onTap,
      validator: onValidate,
      decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        labelStyle: TextStyle(color: Colors.white),
        hintStyle: TextStyle(color: Colors.white),
        // prefixIcon: Icon(
        //   // prefix,
        // ),
        suffixIcon: IconButton(
          onPressed: suffixPressed,
          icon: Icon(
            suffix,
          ),
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

// class ReadOnlyFormField extends StatelessWidget {
//   final String requiredtext;
//   final String requireddata;

//   const ReadOnlyFormField({
//     Key? key,
//     required this.requiredtext,
//     required this.requireddata,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 50,
//         decoration: BoxDecoration(
//           border: Border.all(color: Colors.grey),
//           borderRadius: BorderRadiusDirectional.circular(10),
//           color: const Color.fromARGB(255, 244, 243, 243),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               Text(
//                 requiredtext,
//                 style: AppTextStyle.textStyleMediumGray,
//               ),
//               const Spacer(),
//               Text(
//                 requireddata,
//                 style: AppTextStyle.textStyleRegularBlack,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
