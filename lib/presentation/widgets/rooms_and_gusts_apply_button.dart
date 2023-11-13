import 'package:flutter/material.dart';

class RoomsAndGuestsApplyButton extends StatelessWidget {
  const RoomsAndGuestsApplyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          backgroundColor: const Color(0xff007bc1),
          surfaceTintColor: Colors.white,
        ),
        onPressed: () {},
        child: const Text(
          'Apply',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
