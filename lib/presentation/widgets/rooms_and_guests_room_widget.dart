import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/child_age_row.dart';
import 'package:hotels_task/presentation/widgets/increasing_and_decreasing_widget.dart';
import 'package:hotels_task/presentation/widgets/wrapper_container.dart';

class RoomsAndGuestsRoomWidget extends StatelessWidget {
  const RoomsAndGuestsRoomWidget({super.key});
  int _childNumber(int index) {
    var childNumber = index + 1;
    return childNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: WrapperContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Room 1',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 18,
              ),
            ),
            const IncreasingAndDecreasingWidget(
              varientElement: 'Adults',
            ),
            const IncreasingAndDecreasingWidget(
              varientElement: 'Children',
              minRange: 0,
              maxRange: 3,
            ),
            Column(
              children: List.generate(
                2,
                (index) => ChildAgeRow(
                  childNumber: _childNumber(index),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
