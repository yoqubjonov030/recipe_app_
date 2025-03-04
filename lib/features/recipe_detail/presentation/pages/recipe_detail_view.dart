import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe/core/utils/colors.dart';
import 'package:recipe/features/common/common.dart';
import 'package:recipe/features/recipe_detail/presentation/manager/recipe_detail_view_model.dart';
import 'package:recipe/features/recipe_detail/presentation/pages/recipe_detail_details_view.dart';
import 'package:recipe/features/recipe_detail/presentation/pages/recipe_detail_image_and_video.dart';
import 'package:recipe/features/recipe_detail/presentation/pages/recipe_detail_user_view.dart';

class RecipeDetailView extends StatelessWidget {
  const RecipeDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<RecipeDetailViewModel>();
    if (vm.isLoading) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Scaffold(
        extendBody: true,
        appBar: RecipeAppBar(
          title: vm.recipe.title,
          actions: [
            RecipeIconButtonContainer(
              image: "assets/icons/heart.svg",
              iconWidth: 16,
              iconHeight: 15,
              callback: () {},
            ),
            SizedBox(width: 5),
            RecipeIconButtonContainer(
              image: "assets/icons/share.svg",
              iconWidth: 12,
              iconHeight: 18,
              callback: () {},
            ),
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  RecipeDetailImageAndVideo(),
                  SizedBox(
                    height: 20,
                  ),
                  RecipeDetailUserView(),
                  SizedBox(
                    height: 30,
                  ),
                  RecipeDetailDetailsView(),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: RecipeBottomNavigationBar(),
      );
    }
  }
}
