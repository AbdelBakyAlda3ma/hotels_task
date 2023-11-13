import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/rooms_and_guests_room_widget.dart';

class RoomsAndGuestsListOfRooms extends StatelessWidget {
  const RoomsAndGuestsListOfRooms({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        1,
        (index) => const RoomsAndGuestsRoomWidget(),
      ),
    );
  }
}
