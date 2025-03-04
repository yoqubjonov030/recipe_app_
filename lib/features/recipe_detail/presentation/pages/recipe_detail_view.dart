import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_details_view.dart' show RecipeDetailDetailsView;
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_image_and_video.dart' show RecipeDetailImageAndVideo;
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_user_view.dart' show RecipeDetailUserView;
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_details_ingredients_view.dart' show RecipeDetailsIngredientsView;
import '../../../common/presentation/widgets/recipe_app_bar.dart';
import '../../../common/presentation/widgets/recipe_bottom_navigation_bar.dart';
import '../../../common/presentation/widgets/recipe_icon_button_container.dart';
import '../manager/recipe_detail_view_model.dart';

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
        body: ListView(
          children: [
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
            RecipeDetailsIngredientsView(),
          ],
        ),
        bottomNavigationBar: RecipeBottomNavigationBar(),
      );
    }
  }
}
