import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_app/core/resources/colors.dart';
import 'package:music_app/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 12),
          hintText: 'Search Song',
          hintStyle: Styles.styles_12W500.copyWith(
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 12,
          ),
          filled: true,
          fillColor: ColorsManager.kTextFieldColor,
          border: outlineInputBorder(),
          enabledBorder: outlineInputBorder(),
          focusedBorder: outlineInputBorder(),
        ),
      ),
    );
  }

  InputBorder? outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(50),
      borderSide: const BorderSide(
        color: ColorsManager.kPrimaryColor,
      ),
    );
  }
}
