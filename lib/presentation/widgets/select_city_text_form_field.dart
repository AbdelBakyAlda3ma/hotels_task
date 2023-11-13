import 'package:flutter/material.dart';

class SelectCityTextFormField extends StatelessWidget {
  const SelectCityTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: TextFormField(
        style: const TextStyle(
          color: Color(0xff196cba),
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
        cursorHeight: 18,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 8),
          hintText: 'Select city',
          hintStyle: const TextStyle(
            color: Color(0xff196cba),
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(32),
      borderSide: const BorderSide(
        color: Color(0xffb9e6fd),
      ),
    );
  }
}
