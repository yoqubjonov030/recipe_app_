import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:recipe_app_flutter/core/utils/colors.dart';

class HomeViewYourRecipes extends StatelessWidget {
  const HomeViewYourRecipes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Text(
            "Your Recipes",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Poppins",
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    "assets/images/chicken_burger.png",
                    width: 168.w,
                    height: 162.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -24,
                  child: Container(
                    width: 168.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Chicken Burger",
                            style: TextStyle(
                              color: AppColors.beigeColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                  color: AppColors.pinkSub,
                                  fontSize: 12,
                                ),
                              ),
                              SvgPicture.asset(
                                "assets/icons/star.svg",
                              ),
                              SizedBox(width: 30),
                              SvgPicture.asset(
                                "assets/icons/clock.svg",
                              ),
                              Text(
                                "15 min",
                                style: TextStyle(
                                  color: AppColors.pinkSub,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(14),
                  child: Image.asset(
                    "assets/images/chicken_burger.png",
                    width: 168.w,
                    height: 162.h,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: -24,
                  child: Container(
                    width: 168.w,
                    height: 48.h,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tiramisu",
                            style: TextStyle(
                              color: AppColors.beigeColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              fontFamily: "Poppins",
                            ),
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              Text(
                                "5",
                                style: TextStyle(
                                  color: AppColors.pinkSub,
                                  fontSize: 12,
                                ),
                              ),
                              SvgPicture.asset(
                                "assets/icons/star.svg",
                              ),
                              SizedBox(width: 30),
                              SvgPicture.asset(
                                "assets/icons/clock.svg",
                              ),
                              Text(
                                "15 min",
                                style: TextStyle(
                                  color: AppColors.pinkSub,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: "Poppins",
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
