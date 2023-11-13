import 'package:flutter/material.dart';
import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:hotels_task/core/custom_icons.dart';
import 'package:hotels_task/core/world_nationalities.dart';

class NationalityDropDownTextField extends StatelessWidget {
  const NationalityDropDownTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropDownTextField(
      enableSearch: true,
      textStyle: const TextStyle(
        overflow: TextOverflow.ellipsis,
        color: Color(0xff196cba),
        fontSize: 18,
        fontWeight: FontWeight.w400,
      ),
      dropDownIconProperty: IconProperty(
        icon: CustomIcons.arrowDown,
        size: 20,
      ),
      clearIconProperty: IconProperty(
        icon: Icons.close,
        color: const Color(0xff9ca2af),
      ),
      dropDownItemCount: 3,
      dropDownList: worldNationalities
          .map(
            (nationality) => DropDownValueModel(
              name: nationality,
              value: nationality,
            ),
          )
          .toList(),
      searchDecoration: const InputDecoration(
        contentPadding:
            EdgeInsets.only(left: 46, top: 16, bottom: 16, right: 12),
        hintStyle: TextStyle(),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
      ),
      textFieldDecoration: InputDecoration(
        contentPadding:
            const EdgeInsets.only(left: 46, top: 16, bottom: 16, right: 12),
        filled: true,
        fillColor: Colors.white,
        hintText: 'Select Nationality',
        hintStyle: const TextStyle(
          overflow: TextOverflow.ellipsis,
          color: Color(0xff196cba),
          fontSize: 18,
          fontWeight: FontWeight.w400,
        ),
        disabledBorder: _buildBorder(),
        enabledBorder: _buildBorder(),
        focusedErrorBorder: _buildBorder(),
        errorBorder: _buildBorder(),
        focusedBorder: _buildBorder(),
      ),
    );
  }

  OutlineInputBorder _buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(24),
      borderSide: BorderSide.none,
    );
  }
}
