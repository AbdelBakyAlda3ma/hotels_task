import 'package:flutter/material.dart';
import 'package:hotels_task/presentation/widgets/date_range_text_form_field.dart';
import 'package:hotels_task/presentation/widgets/hotels_search_rooms_button.dart';
import 'package:hotels_task/presentation/widgets/nationality_drop_down_form_field.dart';
import 'package:hotels_task/presentation/widgets/select_city_text_form_field.dart';

class HotelsSearchForm extends StatelessWidget {
  const HotelsSearchForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Form(
      child: Column(
        children: [
          SelectCityTextFormField(),
          SizedBox(height: 12),
          DateRangeTextFormField(),
          SizedBox(height: 12),
          NationalityDropDownTextField(),
          SizedBox(height: 12),
          HotelsSearchRoomsButton(),
        ],
      ),
    );
  }
}
