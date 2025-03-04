import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_flutter/core/utils/colors.dart';
import 'package:recipe_app_flutter/features/common/presentation/widgets/recipe_icon_button_container.dart';
import 'package:recipe_app_flutter/features/recipe_detail/presentation/manager/recipe_detail_view_model.dart';
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_image.dart' show RecipeDetailImage;
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_title_and_stats.dart' show RecipeDetailTitleAndStats;
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_video.dart' show RecipeDetailVideo;

class RecipeDetailImageAndVideo extends StatelessWidget {
  const RecipeDetailImageAndVideo({super.key});

  @override
  Widget build(BuildContext context) {
    final recipe = context.select((RecipeDetailViewModel vm) => vm.recipe);
    return Center(
      child: SizedBox(
        width: 357,
        height: 337,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            RecipeDetailTitleAndStats(
              title: recipe.title,
              rating: recipe.rating,
              reviews: 2273,
            ),
            RecipeDetailImage(image: recipe.image),
            Positioned(
              top: 100,
              child: RecipeIconButtonContainer(
                image: "assets/icons/play.svg",
                callback: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => RecipeDetailVideo(
                      videoUrl: recipe.videoRecipe,
                    ),
                  ),
                ),
                iconWidth: 30,
                iconHeight: 40,
                containerColor: AppColors.redPinkMain,
                containerHeight: 74,
                containerWidth: 74,
                iconColor: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}
