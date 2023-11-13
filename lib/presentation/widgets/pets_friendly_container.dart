import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/pet_friendly_rich_text.dart';
import 'package:hotels_task/presentation/widgets/pets_friendly_switch_button.dart';
import 'package:hotels_task/presentation/widgets/wrapper_container.dart';

class PetsFriendlyContainer extends StatelessWidget {
  const PetsFriendlyContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const WrapperContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              PetFriendlyRichText(),
              Text(
                'Only show stays that allow pets',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff5e696f),
                ),
              ),
            ],
          ),
          PetsFriendlySwithButton()
        ],
      ),
    );
  }
}
