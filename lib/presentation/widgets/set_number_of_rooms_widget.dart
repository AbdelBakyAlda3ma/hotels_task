import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/increasing_and_decreasing_widget.dart';
import 'package:hotels_task/presentation/widgets/wrapper_container.dart';

class SetNumberOfRoomsWidget extends StatelessWidget {
  const SetNumberOfRoomsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperContainer(
      child: IncreasingAndDecreasingWidget(
        varientElement: 'Rooms',
      ),
    );
  }
}
