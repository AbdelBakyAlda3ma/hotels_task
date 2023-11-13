import 'package:flutter/material.dart';
import 'package:hotels_task/core/custom_icons.dart';
import 'package:hotels_task/core/functions/show_rooms_modal_bottom_sheet.dart';
import 'package:hotels_task/presentation/screens/rooms_and_guests_screen.dart';

class HotelsSearchRoomsButton extends StatelessWidget {
  final String text = '1 Room, 2 Adult, 0 Children';
  const HotelsSearchRoomsButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      onPressed: () async {
        /// this method shows modal bottom sheet of the given view
        await showRoomModalBottomSheet(
          context,
          bottomSheetView: const RoomsAndGusetsScreen(),
        );
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              text,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Color(0xff196cba),
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Icon(
            CustomIcons.arrowDown,
            color: Color(0xff6b7381),
          ),
        ],
      ),
    );
  }
}
