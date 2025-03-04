import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/colors.dart';

class RecipeHomeViewTrendingRecipe extends StatelessWidget {
  const RecipeHomeViewTrendingRecipe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trending Recipe",
            style: TextStyle(color: AppColors.redPinkMain),
          ),
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                bottom: -39,
                left: 0,
                right: 0,
                child: Container(
                  width: 348.w,
                  height: 49.h,
                  decoration: BoxDecoration(
                    color: AppColors.beigeColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    border: Border.all(color: AppColors.pinkSub),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salami and cheese pizza",
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            fontSize: 13,
                          ),
                        ),
                        Text(
                          "This is a quick overview of the ingredients...",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                            fontFamily: "League Spartan",
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Image.asset(
                "assets/images/salami_pizza.png",
                width: 358.w,
                height: 143.h,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
