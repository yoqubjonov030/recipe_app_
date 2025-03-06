import 'package:flutter/material.dart';
import 'package:recipe_app_flutter/core/utils/colors.dart';
import 'package:recipe_app_flutter/features/common/presentation/widgets/recipe_rating.dart';
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_reviews.dart' show RecipeReviews;

class RecipeDetailTitleAndStats extends StatelessWidget {
  const RecipeDetailTitleAndStats({
    super.key,
    required this.title,
    required this.rating,
    required this.reviews,
  });

  final String title;
  final int reviews;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: 357,
        height: 150,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
        decoration: BoxDecoration(
          color:  AppColors.redPinkMain,
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
        ),
        alignment: Alignment.bottomCenter,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            Row(
              spacing: 10,
              children: [
                RecipeRating(
                  rating: rating,
                  textColor: Colors.white,
                  iconColor: Colors.white,
                  swap: true,
                ),
                RecipeReviews(reviews: reviews),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
