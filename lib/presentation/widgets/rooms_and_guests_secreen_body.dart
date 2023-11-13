import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/pets_friendly_container.dart';
import 'package:hotels_task/presentation/widgets/rooms_and_guests_list_of_rooms.dart';
import 'package:hotels_task/presentation/widgets/rooms_and_gusts_apply_button.dart';
import 'package:hotels_task/presentation/widgets/set_number_of_rooms_widget.dart';

class RoomsAndGuestsScreenBody extends StatelessWidget {
  const RoomsAndGuestsScreenBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: EdgeInsets.fromLTRB(24, 16, 24, 32),
            child: Column(
              children: [
                Column(
                  children: [
                    SetNumberOfRoomsWidget(),
                    SizedBox(height: 6),
                    RoomsAndGuestsListOfRooms(),
                    SizedBox(height: 6),
                    PetsFriendlyContainer(),
                    SizedBox(height: 12),
                  ],
                ),
                Spacer(),
                RoomsAndGuestsApplyButton(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
