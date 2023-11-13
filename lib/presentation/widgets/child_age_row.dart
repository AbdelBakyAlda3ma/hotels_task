import 'package:flutter/material.dart';

class ChildAgeRow extends StatelessWidget {
  final int childNumber;
  const ChildAgeRow({
    super.key,
    required this.childNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 12,
        left: 32,
        bottom: 12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Age of child $childNumber',
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          const Text(
            '14 years',
            style: TextStyle(
              color: Color(0xff6d717b),
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
