import 'package:flutter/material.dart';

Future<dynamic> showRoomModalBottomSheet(
  BuildContext context, {
  required Widget bottomSheetView,
}) async {
  return await showModalBottomSheet(
    useSafeArea: true,
    isScrollControlled: true,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(12),
        topRight: Radius.circular(12),
      ),
    ),
    context: context,
    builder: (context) {
      return bottomSheetView;
    },
  );
}
