import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final IconData icon;
  final bool isDisabled;
  final void Function() onPressed;
  final Color disabledColor = const Color(0xffc5e2ec);
  final Color enabledColor = const Color(0xff007fad);

  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.isDisabled,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      constraints: const BoxConstraints(),
      style: IconButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isDisabled ? disabledColor : enabledColor,
          ),
          borderRadius: BorderRadius.circular(100),
        ),
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
      ),
      onPressed: isDisabled ? null : onPressed,
      icon: Icon(
        icon,
        color: isDisabled ? disabledColor : enabledColor,
      ),
    );
  }
}
