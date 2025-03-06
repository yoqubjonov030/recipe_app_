import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipe_app_flutter/core/utils/colors.dart';

class RecipeTime extends StatelessWidget {
  const RecipeTime({
    super.key,
    required this.timeRequired,
  });

  final int timeRequired;

  @override
  Widget build(BuildContext context) {
    return Row(
      spacing: 5,
      children: [
        SvgPicture.asset(
          "assets/icons/clock.svg",
        ),
        Text(
          "${timeRequired.toString()}min",
          style: TextStyle(
            color:  AppColors.pinkSub,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
