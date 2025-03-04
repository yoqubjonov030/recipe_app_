import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_flutter/core/utils/colors.dart' show AppColors;
import 'package:recipe_app_flutter/features/recipe_detail/presentation/manager/recipe_detail_view_model.dart';

class RecipeDetailDetailsView extends StatelessWidget {
  const RecipeDetailDetailsView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeDetailViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Column(
        spacing: 20,
        children: [
          Row(
            spacing: 15,
            children: [
              Text(
                "Details",
                style: TextStyle(
                  color: AppColors.redPinkMain,
                  fontWeight: FontWeight.w600,
                  fontFamily: "Poppins",
                  fontSize: 20,
                ),
              ),
              SvgPicture.asset("assets/icons/clock.svg"),
              Text(
                "${vm.recipe.timeRequired} min",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontFamily: "Poppins",
                ),
              ),
            ],
          ),
          Text(
            vm.recipe.description,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 12,
              fontFamily: "Poppins",
            ),
          )
        ],
      ),
    );
  }
}
