import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/increasing_and_decreasing_widget_buttons.dart';

class IncreasingAndDecreasingWidget extends StatelessWidget {
  final String varientElement;
  final int minRange;
  final int maxRange;
  const IncreasingAndDecreasingWidget({
    super.key,
    required this.varientElement,
    this.minRange = 1,
    this.maxRange = 4,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          varientElement,
          style: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 20,
          ),
        ),
        IncreasingAndDecreasingWidgetButtons(
          minRange: minRange,
          maxRange: maxRange,
        )
      ],
    );
  }
}
