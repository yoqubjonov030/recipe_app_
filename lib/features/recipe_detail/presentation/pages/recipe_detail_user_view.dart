import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:recipe/core/utils/colors.dart';
import 'package:recipe/features/recipe_detail/presentation/manager/recipe_detail_view_model.dart';

class RecipeDetailUserView extends StatelessWidget {
  const RecipeDetailUserView({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeDetailViewModel>();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.network(
                  vm.recipe.user.image,
                  width: 61,
                  height: 63,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "@${vm.recipe.user.username}",
                    style: TextStyle(
                        color: AppColors.redPinkMain,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins"),
                  ),
                  Text(
                    '${vm.recipe.user.firstName} ${vm.recipe.user.lastName}',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        fontFamily: "League Spartan"),
                  )
                ],
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 109,
                decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(21),
                ),
                height: 21,
                alignment: Alignment.center,
                child: Text(
                  "Following",
                  style: TextStyle(
                    color: AppColors.pinkSub,
                    fontFamily: "Poppins",
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              SvgPicture.asset(
                "assets/icons/three_dots.svg",
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 356,
            color: AppColors.pinkSub,
          ),
        ],
      ),
    );
  }
}
