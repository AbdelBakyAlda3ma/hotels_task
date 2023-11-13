import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/rooms_and_guests_screen_app_bar.dart';
import 'package:hotels_task/presentation/widgets/rooms_and_guests_secreen_body.dart';

class RoomsAndGusetsScreen extends StatelessWidget {
  const RoomsAndGusetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xffebeced),
      appBar: RoomsAndGusetsScreenAppBar(),
      body: RoomsAndGuestsScreenBody(),
    );
  }
}
