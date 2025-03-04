import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../../core/utils/colors.dart';
import '../manager/recipe_detail_view_model.dart';

class RecipeDetailsIngredientsView extends StatelessWidget {
  const RecipeDetailsIngredientsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeDetailViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ingredients",
            style: TextStyle(
              color: AppColors.redPinkMain,
              fontSize: 20,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w600,
            ),
          ),
          ...vm.recipe.ingredients.map((ingredient) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Row(
                children: [
                  SvgPicture.asset("assets/icons/dot.svg"),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    ingredient.amount != null ? '${ingredient.amount}' : '',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    ingredient.name,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            );
          }),
        ],
      ),
    );
  }
}
