import 'package:flutter/material.dart';

class SearchHotelsFormOrangePart extends StatelessWidget {
  const SearchHotelsFormOrangePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 12,
            right: 8,
            bottom: 12,
          ),
          child: Text(
            'find hotels',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        ),
        Icon(
          Icons.search,
          color: Colors.white,
          size: 44,
        ),
      ],
    );
  }
}
