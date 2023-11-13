import 'package:flutter/material.dart';

class RoomsAndGusetsScreenAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RoomsAndGusetsScreenAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      title: const Text('Rooms and Guests'),
      centerTitle: true,
      actions: [
        GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Padding(
            padding: EdgeInsets.all(12),
            child: Icon(
              Icons.close,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
