import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const CustomTextFormField({Key key, this.controller, this.label})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    // custom form for reuse it in add task
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        validator: (String value) {
          return value.length < 1 ? '$label is reqired' : null;
        },
      ),
    );
  }
}
