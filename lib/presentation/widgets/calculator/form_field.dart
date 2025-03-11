import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppFormField extends StatelessWidget {
  const AppFormField({
    super.key,
    required this.controller1,
    this.width = 150,
    this.height = 150,
  });

  final TextEditingController controller1;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 150, //MediaQuery.of(context).size.width,
      height: 150,
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.grey.shade300,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 10,
          ),
        ),
        style: const TextStyle(fontSize: 24),
        controller: controller1,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'^\d*[\.]?\d*$')),
        ],
        validator: (String? value) {
          if (value == null || value.isEmpty) {
            return 'Introdu un nr';
          }
          return null;
        },
      ),
    );
  }
}
