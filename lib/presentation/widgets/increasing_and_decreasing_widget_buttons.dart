import 'package:flutter/material.dart';
import 'package:hotels_task/core/widgets/custom_icon_button.dart';

class IncreasingAndDecreasingWidgetButtons extends StatefulWidget {
  final int minRange;
  final int maxRange;
  const IncreasingAndDecreasingWidgetButtons(
      {super.key, required this.minRange, required this.maxRange});

  @override
  State<IncreasingAndDecreasingWidgetButtons> createState() =>
      _IncreasingAndDecreasingWidgetButtonsState();
}

class _IncreasingAndDecreasingWidgetButtonsState
    extends State<IncreasingAndDecreasingWidgetButtons> {
  int _counter = 1;
  void _increaseCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decreaseCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButton(
          isDisabled: _counter == widget.minRange,
          icon: Icons.remove,
          onPressed: () {
            _decreaseCounter();
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Text(
            '$_counter',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        CustomIconButton(
          isDisabled: _counter == widget.maxRange,
          icon: Icons.add,
          onPressed: _increaseCounter,
        ),
      ],
    );
  }
}
