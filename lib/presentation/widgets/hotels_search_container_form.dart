import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/hotels_search_form.dart';
import 'package:hotels_task/presentation/widgets/search_hotels_form_orange_part.dart';

class HotelsSearchContainerForm extends StatelessWidget {
  const HotelsSearchContainerForm({super.key});

  @override
  Widget build(BuildContext context) {
    /// the parent container
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: const Color(0xffec8b24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          /// the gradient blue color container
          /// which has the form as a child
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color(0xff1376bc),
                  Color(0xff4fb6fe),
                  Color(0xff4fb6fe),
                ],
              ),
            ),
            child: const HotelsSearchForm(),
          ),
          const SearchHotelsFormOrangePart()
        ],
      ),
    );
  }
}
