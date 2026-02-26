import 'package:burger_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class SaveCard extends StatelessWidget {
  const SaveCard({super.key, this.onChanged, required this.value});

  final void Function(bool?)? onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          visualDensity: VisualDensity.compact,
          activeColor: const Color(0xff08431D),
          value: value,
          onChanged: onChanged,
        ),
        Text(
          "Save card details for future payments",
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
