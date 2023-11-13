import 'package:flutter/material.dart';
import 'package:hotels_task/core/custom_switch.dart';

class PetsFriendlySwithButton extends StatefulWidget {
  const PetsFriendlySwithButton({
    super.key,
  });

  @override
  State<PetsFriendlySwithButton> createState() =>
      _PetsFriendlySwithButtonState();
}

class _PetsFriendlySwithButtonState extends State<PetsFriendlySwithButton> {
  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return CustomSwitch(
        value: switchValue,
        onChanged: (value) {
          setState(() {
            switchValue = value;
          });
        });
  }
}
