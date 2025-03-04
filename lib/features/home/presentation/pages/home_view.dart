import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app_flutter/features/common/presentation/widgets/recipe_bottom_navigation_bar.dart';
import 'package:recipe_app_flutter/features/home/presentation/pages/home_view_your_recipes.dart';
import 'package:recipe_app_flutter/features/home/presentation/pages/recipe_home_view_top_chefs.dart' show RecipeHomeViewTopChefs;
import 'package:recipe_app_flutter/features/home/presentation/pages/recipe_home_view_trending_recipe.dart' show RecipeHomeViewTrendingRecipe;

import '../../../../core/utils/colors.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: AppColors.beigeColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi! Dianne",
              style: TextStyle(
                color: AppColors.redPinkMain,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            Text(
              "What are you cooking today",
              style: TextStyle(
                fontSize: 13.45,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {},
            child: Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  color: AppColors.pink,
                  borderRadius: BorderRadius.circular(14),
                ),
                child: SvgPicture.asset("assets/icons/notification.svg")),
          ),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 28,
              height: 28,
              decoration: BoxDecoration(
                color: AppColors.pink,
                borderRadius: BorderRadius.circular(14),
              ),
              child: SvgPicture.asset("assets/icons/search.svg"),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            RecipeHomeViewTrendingRecipe(),
            SizedBox(
              height: 70,
            ),
            HomeViewYourRecipes(),
            SizedBox(height: 70),
            RecipeHomeViewTopChefs(),
          ],
        ),
      ),
      bottomNavigationBar: RecipeBottomNavigationBar(),
    );
  }
}
